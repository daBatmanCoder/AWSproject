<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:676df1fa-cc5e-4a89-b07d-723057d557a6(CollageGeneratorSolution.model)">
  <persistence version="9" />
  <languages>
    <use id="ec3060ee-1f23-4e47-af80-3618736238b3" name="afcl.language" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ec3060ee-1f23-4e47-af80-3618736238b3" name="afcl.language">
      <concept id="3703551373945568696" name="afcl.language.structure.Data" flags="ng" index="02Hny">
        <child id="3703551373945568730" name="type" index="02Hm0" />
        <child id="3703551373945568729" name="value" index="02Hm3" />
      </concept>
      <concept id="3703551373945568695" name="afcl.language.structure.DataOutput" flags="ng" index="02HnH" />
      <concept id="3703551373945568692" name="afcl.language.structure.OutputBlock" flags="ng" index="02HnI">
        <child id="3703551373945568693" name="outputs" index="02HnJ" />
      </concept>
      <concept id="3703551373946370737" name="afcl.language.structure.FunctionType" flags="ng" index="07xbF" />
      <concept id="3703551373946370725" name="afcl.language.structure.FunctionStatement" flags="ng" index="07xbZ">
        <child id="3703551373946370743" name="type" index="07xbH" />
        <child id="3621437988970037615" name="dataIns" index="3uUYZ6" />
        <child id="3621437988970037616" name="dataOuts" index="3uUYZp" />
      </concept>
      <concept id="3703551373944476556" name="afcl.language.structure.StringType" flags="ng" index="0eRJm" />
      <concept id="3703551373944476557" name="afcl.language.structure.NumberType" flags="ng" index="0eRJn" />
      <concept id="3703551373948339761" name="afcl.language.structure.DataReference" flags="ng" index="0Z6TF">
        <reference id="3703551373948339762" name="scope" index="0Z6TC" />
        <reference id="3621437988967577453" name="dataReference" index="3uLpB4" />
      </concept>
      <concept id="8811045998705258" name="afcl.language.structure.LoopResultReference" flags="ng" index="22LnvN">
        <reference id="8811045998705261" name="scope" index="22LnvO" />
        <reference id="8811045998705263" name="reference" index="22LnvQ" />
      </concept>
      <concept id="8811045998705255" name="afcl.language.structure.LoopOutputBlock" flags="ng" index="22LnvY">
        <child id="8811045998705256" name="outputs" index="22LnvL" />
      </concept>
      <concept id="8811045999383196" name="afcl.language.structure.LoopDataInput" flags="ng" index="22YXW5" />
      <concept id="8811045999383164" name="afcl.language.structure.LoopInputBlock" flags="ng" index="22YXZ_">
        <child id="8811045999383165" name="inputs" index="22YXZ$" />
      </concept>
      <concept id="5541022465991096313" name="afcl.language.structure.EmptyStatement" flags="ng" index="dfxPE" />
      <concept id="1564814548520487598" name="afcl.language.structure.ArrayType" flags="ng" index="2imxK$" />
      <concept id="1564814548518336754" name="afcl.language.structure.ForEachStatement" flags="ng" index="2iuMTS">
        <child id="8811045998705441" name="input" index="22LnqS" />
        <child id="8811045998705248" name="block" index="22LnvT" />
        <child id="8811045998705250" name="output" index="22LnvV" />
      </concept>
      <concept id="7318275687311091094" name="afcl.language.structure.Workflow" flags="ng" index="3j0p_w">
        <child id="3703551373946370745" name="input" index="07xbz" />
        <child id="3703551373946370748" name="output" index="07xbA" />
        <child id="7318275687311092959" name="body" index="3j0p0D" />
      </concept>
      <concept id="7318275687311091095" name="afcl.language.structure.InputBlock" flags="ng" index="3j0p_x">
        <child id="7318275687311101724" name="inputs" index="3j0vfE" />
      </concept>
      <concept id="7318275687311091096" name="afcl.language.structure.DataInput" flags="ng" index="3j0p_I" />
      <concept id="7318275687311091097" name="afcl.language.structure.BodyBlock" flags="ng" index="3j0p_J">
        <child id="3703551373946370752" name="statements" index="07xaq" />
      </concept>
      <concept id="3621437988972436302" name="afcl.language.structure.ResultReference" flags="ng" index="3uzRnB">
        <reference id="3621437988972436303" name="scope" index="3uzRnA" />
        <reference id="3621437988972436304" name="resultReference" index="3uzRnT" />
      </concept>
      <concept id="3621437988972568094" name="afcl.language.structure.ResultBlock" flags="ng" index="3u$n2R">
        <child id="3621437988972568097" name="results" index="3u$n28" />
      </concept>
      <concept id="4384759552460367937" name="afcl.language.structure.JsonInputLiteral" flags="ng" index="3xfQfl">
        <property id="4384759552460701842" name="value" index="3xcwG6" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3j0p_w" id="xI8cuysbvJ">
    <property role="TrG5h" value="CollageGenerator" />
    <node concept="3j0p_J" id="xI8cuysbvK" role="3j0p0D">
      <node concept="07xbZ" id="6QqW9A_D2IX" role="07xaq">
        <property role="TrG5h" value="load_filenames" />
        <node concept="07xbF" id="6QqW9A_D2IY" role="07xbH">
          <property role="TrG5h" value="filenames" />
        </node>
        <node concept="22YXZ_" id="6QqW9A_D2IZ" role="3uUYZ6">
          <node concept="22YXW5" id="6QqW9A_D2J0" role="22YXZ$">
            <property role="TrG5h" value="bucket" />
            <node concept="0Z6TF" id="6QqW9A_D2J1" role="02Hm3">
              <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
              <ref role="3uLpB4" node="4QYu3dr6DF5" resolve="bucket" />
            </node>
          </node>
          <node concept="22YXW5" id="6QqW9A_D2Uf" role="22YXZ$">
            <property role="TrG5h" value="folder" />
            <node concept="0Z6TF" id="6QqW9A_D2Vo" role="02Hm3">
              <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
              <ref role="3uLpB4" node="6QqW9A_D2TB" resolve="folder" />
            </node>
          </node>
        </node>
        <node concept="02HnI" id="6QqW9A_D2J2" role="3uUYZp">
          <node concept="02HnH" id="6QqW9A_D2J3" role="02HnJ">
            <property role="TrG5h" value="images" />
            <node concept="2imxK$" id="6QqW9A_D2J4" role="02Hm0" />
          </node>
        </node>
      </node>
      <node concept="2iuMTS" id="3tHYN24g5cI" role="07xaq">
        <property role="TrG5h" value="get_picture_analysis" />
        <node concept="22YXZ_" id="3tHYN24g5cK" role="22LnqS">
          <node concept="22YXW5" id="3tHYN24g5dJ" role="22YXZ$">
            <property role="TrG5h" value="image_iterator" />
            <node concept="0Z6TF" id="3tHYN24g5dU" role="02Hm3">
              <ref role="0Z6TC" node="6QqW9A_D2IX" resolve="load_filenames" />
              <ref role="3uLpB4" node="6QqW9A_D2J3" resolve="images" />
            </node>
          </node>
        </node>
        <node concept="3j0p_J" id="3tHYN24g5cM" role="22LnvT">
          <node concept="07xbZ" id="3tHYN24g5e1" role="07xaq">
            <property role="TrG5h" value="analyse_picture" />
            <node concept="07xbF" id="3tHYN24g5e2" role="07xbH">
              <property role="TrG5h" value="picture_analysis" />
            </node>
            <node concept="22YXZ_" id="3tHYN24g5e3" role="3uUYZ6">
              <node concept="22YXW5" id="3tHYN24g5e5" role="22YXZ$">
                <property role="TrG5h" value="image" />
                <node concept="0Z6TF" id="3tHYN24g5e9" role="02Hm3">
                  <ref role="0Z6TC" node="3tHYN24g5cI" resolve="get_picture_analysis" />
                  <ref role="3uLpB4" node="3tHYN24g5dJ" resolve="image_iterator" />
                </node>
              </node>
              <node concept="22YXW5" id="4QYu3dr6DLY" role="22YXZ$">
                <property role="TrG5h" value="bucket" />
                <node concept="0Z6TF" id="4QYu3dr6DN4" role="02Hm3">
                  <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
                  <ref role="3uLpB4" node="4QYu3dr6DF5" resolve="bucket" />
                </node>
              </node>
            </node>
            <node concept="02HnI" id="3tHYN24g5e4" role="3uUYZp">
              <node concept="02HnH" id="3tHYN24g5eg" role="02HnJ">
                <property role="TrG5h" value="analysis" />
                <node concept="2imxK$" id="2wQi_t_SMTM" role="02Hm0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="22LnvY" id="3tHYN24g5cO" role="22LnvV">
          <node concept="22LnvN" id="3tHYN24g5eo" role="22LnvL">
            <property role="TrG5h" value="analyses" />
            <ref role="22LnvO" node="3tHYN24g5e1" resolve="analyse_picture" />
            <ref role="22LnvQ" node="3tHYN24g5eg" resolve="analysis" />
          </node>
        </node>
      </node>
      <node concept="2iuMTS" id="3tHYN24g5eI" role="07xaq">
        <property role="TrG5h" value="crop_pictures" />
        <node concept="22YXZ_" id="3tHYN24g5eK" role="22LnqS">
          <node concept="22YXW5" id="3tHYN24g5fe" role="22YXZ$">
            <property role="TrG5h" value="analysis_iterator" />
            <node concept="0Z6TF" id="3tHYN24g5fy" role="02Hm3">
              <ref role="0Z6TC" node="3tHYN24g5cI" resolve="get_picture_analysis" />
              <ref role="3uLpB4" node="3tHYN24g5eo" resolve="analyses" />
            </node>
          </node>
        </node>
        <node concept="3j0p_J" id="3tHYN24g5eM" role="22LnvT">
          <node concept="07xbZ" id="3tHYN24g5XD" role="07xaq">
            <property role="TrG5h" value="crop_picture" />
            <node concept="07xbF" id="3tHYN24g5XE" role="07xbH">
              <property role="TrG5h" value="cropped_picture" />
            </node>
            <node concept="22YXZ_" id="3tHYN24g5XF" role="3uUYZ6">
              <node concept="22YXW5" id="4QYu3dr6DOR" role="22YXZ$">
                <property role="TrG5h" value="analysis" />
                <node concept="0Z6TF" id="4QYu3dr6DQd" role="02Hm3">
                  <ref role="0Z6TC" node="3tHYN24g5eI" resolve="crop_pictures" />
                  <ref role="3uLpB4" node="3tHYN24g5fe" resolve="analysis_iterator" />
                </node>
              </node>
              <node concept="22YXW5" id="4QYu3dr6DNF" role="22YXZ$">
                <property role="TrG5h" value="bucket" />
                <node concept="0Z6TF" id="4QYu3dr6DOK" role="02Hm3">
                  <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
                  <ref role="3uLpB4" node="4QYu3dr6DF5" resolve="bucket" />
                </node>
              </node>
            </node>
            <node concept="02HnI" id="3tHYN24g5XG" role="3uUYZp">
              <node concept="02HnH" id="3tHYN24g5YX" role="02HnJ">
                <property role="TrG5h" value="files" />
                <node concept="2imxK$" id="2wQi_t_SMTR" role="02Hm0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="22LnvY" id="3tHYN24g5eO" role="22LnvV">
          <node concept="22LnvN" id="3tHYN24g5Z5" role="22LnvL">
            <property role="TrG5h" value="pictureFileGroups" />
            <ref role="22LnvO" node="3tHYN24g5XD" resolve="crop_picture" />
            <ref role="22LnvQ" node="3tHYN24g5YX" resolve="files" />
          </node>
        </node>
      </node>
      <node concept="07xbZ" id="4RvmG5Tg2sa" role="07xaq">
        <property role="TrG5h" value="group_pictures" />
        <node concept="07xbF" id="4RvmG5Tg2sc" role="07xbH">
          <property role="TrG5h" value="picture_groups" />
        </node>
        <node concept="22YXZ_" id="4RvmG5Tg2se" role="3uUYZ6">
          <node concept="22YXW5" id="4RvmG5Tg2si" role="22YXZ$">
            <property role="TrG5h" value="pictureFileGroups" />
            <node concept="0Z6TF" id="4RvmG5Tg2sx" role="02Hm3">
              <ref role="0Z6TC" node="3tHYN24g5eI" resolve="crop_pictures" />
              <ref role="3uLpB4" node="3tHYN24g5Z5" resolve="pictureFileGroups" />
            </node>
          </node>
          <node concept="22YXW5" id="6QqW9A_D3bQ" role="22YXZ$">
            <property role="TrG5h" value="emotions" />
            <node concept="0Z6TF" id="6QqW9A_D3d1" role="02Hm3">
              <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
              <ref role="3uLpB4" node="3tHYN24g5a_" resolve="emotions" />
            </node>
          </node>
          <node concept="22YXW5" id="6QqW9A_D3d8" role="22YXZ$">
            <property role="TrG5h" value="minConfidence" />
            <node concept="0Z6TF" id="6QqW9A_D3eF" role="02Hm3">
              <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
              <ref role="3uLpB4" node="3tHYN24g5bn" resolve="minConfidence" />
            </node>
          </node>
        </node>
        <node concept="02HnI" id="4RvmG5Tg2sg" role="3uUYZp">
          <node concept="02HnH" id="4RvmG5Tg2sC" role="02HnJ">
            <property role="TrG5h" value="groups" />
            <node concept="2imxK$" id="4RvmG5Tg2E$" role="02Hm0" />
          </node>
        </node>
      </node>
      <node concept="dfxPE" id="4RvmG5Tg2s8" role="07xaq" />
      <node concept="2iuMTS" id="3tHYN24g608" role="07xaq">
        <property role="TrG5h" value="create_collages" />
        <node concept="22YXZ_" id="3tHYN24g60a" role="22LnqS">
          <node concept="22YXW5" id="3tHYN24g60i" role="22YXZ$">
            <property role="TrG5h" value="groups" />
            <node concept="0Z6TF" id="3tHYN24g60j" role="02Hm3">
              <ref role="0Z6TC" node="4RvmG5Tg2sa" resolve="group_pictures" />
              <ref role="3uLpB4" node="4RvmG5Tg2sC" resolve="groups" />
            </node>
          </node>
        </node>
        <node concept="3j0p_J" id="3tHYN24g60c" role="22LnvT">
          <node concept="07xbZ" id="3tHYN24g60o" role="07xaq">
            <property role="TrG5h" value="create_collage" />
            <node concept="07xbF" id="3tHYN24g60p" role="07xbH">
              <property role="TrG5h" value="collage" />
            </node>
            <node concept="22YXZ_" id="3tHYN24g60q" role="3uUYZ6">
              <node concept="22YXW5" id="4QYu3dr6DRs" role="22YXZ$">
                <property role="TrG5h" value="bucket" />
                <node concept="0Z6TF" id="4QYu3dr6DST" role="02Hm3">
                  <ref role="0Z6TC" node="xI8cuysbvJ" resolve="CollageGenerator" />
                  <ref role="3uLpB4" node="4QYu3dr6DF5" resolve="bucket" />
                </node>
              </node>
              <node concept="22YXW5" id="3tHYN24g60s" role="22YXZ$">
                <property role="TrG5h" value="group" />
                <node concept="0Z6TF" id="3tHYN24g60M" role="02Hm3">
                  <ref role="0Z6TC" node="3tHYN24g608" resolve="create_collages" />
                  <ref role="3uLpB4" node="3tHYN24g60i" resolve="groups" />
                </node>
              </node>
            </node>
            <node concept="02HnI" id="3tHYN24g60r" role="3uUYZp">
              <node concept="02HnH" id="3tHYN24g61b" role="02HnJ">
                <property role="TrG5h" value="collage" />
                <node concept="0eRJm" id="3tHYN24g61e" role="02Hm0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="22LnvY" id="3tHYN24g60e" role="22LnvV">
          <node concept="22LnvN" id="3tHYN24g61i" role="22LnvL">
            <property role="TrG5h" value="collages" />
            <ref role="22LnvO" node="3tHYN24g60o" resolve="create_collage" />
            <ref role="22LnvQ" node="3tHYN24g61b" resolve="collage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3j0p_x" id="xI8cuysbvL" role="07xbz">
      <node concept="3j0p_I" id="4QYu3dr6DF5" role="3j0vfE">
        <property role="TrG5h" value="bucket" />
        <node concept="0eRJm" id="4QYu3dr6DFd" role="02Hm0" />
        <node concept="3xfQfl" id="4QYu3dr6DF$" role="02Hm3">
          <property role="3xcwG6" value="bucket" />
        </node>
      </node>
      <node concept="3j0p_I" id="3tHYN24g5a_" role="3j0vfE">
        <property role="TrG5h" value="emotions" />
        <node concept="2imxK$" id="3tHYN24g5aJ" role="02Hm0" />
        <node concept="3xfQfl" id="3tHYN24g5b6" role="02Hm3">
          <property role="3xcwG6" value="emotions" />
        </node>
      </node>
      <node concept="3j0p_I" id="3tHYN24g5bn" role="3j0vfE">
        <property role="TrG5h" value="minConfidence" />
        <node concept="3xfQfl" id="3tHYN24g5cT" role="02Hm3">
          <property role="3xcwG6" value="minConfidence" />
        </node>
        <node concept="0eRJn" id="3tHYN24g5dk" role="02Hm0" />
      </node>
      <node concept="3j0p_I" id="6QqW9A_D2TB" role="3j0vfE">
        <property role="TrG5h" value="folder" />
        <node concept="0eRJm" id="6QqW9A_D2TJ" role="02Hm0" />
        <node concept="3xfQfl" id="6QqW9A_D2U6" role="02Hm3">
          <property role="3xcwG6" value="folder" />
        </node>
      </node>
    </node>
    <node concept="3u$n2R" id="xI8cuysbvM" role="07xbA">
      <node concept="3uzRnB" id="3tHYN24g61M" role="3u$n28">
        <property role="TrG5h" value="collages" />
        <ref role="3uzRnA" node="3tHYN24g608" resolve="create_collages" />
        <ref role="3uzRnT" node="3tHYN24g61i" resolve="collages" />
      </node>
    </node>
  </node>
</model>

