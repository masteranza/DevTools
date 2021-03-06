<|
  "Label" -> "Select cell"
, "ShortKey" -> "a"
, "Action" :> (If[Length[#] > 0 , SelectionMove[First @ # ,All,Cell]]& @ SelectedCells @ EvaluationNotebook[])
|>

<| "Label" -> "$InstallationDir", "Action" :> SystemOpen @ $InstallationDirectory |>

<| "Label" -> "$UserBaseDir"    , "Action" :> SystemOpen @ $UserBaseDirectory |>

<|
  "Label" -> "NotebookDirectory"
  
  , "Action" :> If[
      ReplaceAll["FileName", NotebookInformation[SelectedNotebook[]]] =!=  "FileName",
      SystemOpen[ NotebookDirectory[ SelectedNotebook[] ] ]
    ]
|>