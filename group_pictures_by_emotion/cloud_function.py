
def filter_faces(faces, filter_emotions, min_confidence):
    """
    Pick the highest confidence emotion and filter out emotions that aren't in the filter_emotions list.
    Also filter out emotions whose confidence is lower than min_confidence.
    """
    for a in faces:
        most_confident_emotion = None

        for e in a["Emotions"]:
            if e["Type"] in filter_emotions and e["Confidence"] >= min_confidence:
                if most_confident_emotion is None or e["Confidence"] > most_confident_emotion["Confidence"]:
                    most_confident_emotion = e

        del a["Emotions"]
        a["Emotion"] = most_confident_emotion

    return list(filter(lambda a: a["Emotion"] is not None, faces))


def group_faces(faces):
    """
    Group faces by their emotion. Result is a list of groups.
    """
    group_dict = {}

    for f in faces:
        emotion = f["Emotion"]["Type"]
        if emotion in group_dict:
            group_dict[emotion].append(f["Filename"])
        else:
            group_dict[emotion] = [ f["Filename"] ]

    return [ { "Emotion": e, "Filenames": filenames } for e, filenames in group_dict.items() ]


def cloud_function(json_input):
    """
    picture_groups: Expected to be of the form: [ { "Filename": "<filename>", "Emotions": [ <Emotion1>, .. ] }, .. ]
        Each group represents the detected faces inside a picture
    emotions: List of emotions to filter for.
    min_confidence: Minimum confidence that is required for emotion assignment. 0-100
    """
    picture_groups = json_input["pictureFileGroups"]
    emotions = json_input["emotions"]
    min_confidence = json_input["minConfidence"]

    faces = []
    # Accumulate all faces
    for pg in picture_groups:
        faces.extend(pg)

    filtered_faces = filter_faces(faces, emotions, min_confidence)
    # Each group represents an emotion and the list of faces associated with it
    groups = group_faces(filtered_faces)

    # return the result
    return { "groups": groups }
