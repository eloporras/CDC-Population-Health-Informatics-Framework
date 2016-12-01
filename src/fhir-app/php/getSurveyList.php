<?php
include "database_config.php";

$form = array("Section", array("Q Code", "Question Text", array("")), );

// Build Form Header
$form = array("code" => -1, 
              "template" => "list", 
              "name" => "Population Health Survey V0.9",
              "templateOptions" => array("obrHeader" => false, "hideHeader" => true, "hideUnits" => true, "displayControl" => array("questionLayout"=> "vertical"),
                                          "obxTableColumns" => array(
                                                                     array("name" => "Question", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%"))),
                                                                     array("name" => "null", "displayControl" => array("colCSS" => array("name" => "width", "value" => "0%"))),
                                                                     array("name" => "Value", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%"))),
                                                                     array("name" => "Units", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%")))
                                                                    )
                                        ), 
              "items" => array());

// Build Survey List
$item = array("questionCode" => 0, 
              "question" => "Please select the survey you wish to take.", 
              "displayControl" => array("questionLayout" => "horizontal", "answerLayout" => "radio"),
              "answers" => array(), 
              "dataType" => "CNE");
                             
array_push($form['items'], $item);

if($survey_result = pg_query("Select * From survey"))
    while($row = pg_fetch_assoc($survey_result))
    {
        $title = $row['title'];
        $sections = $row['id'];

        // Build Answer
        $q_answer = array("text" => $title, "code" => $sections);

        array_push($form['items'][0]['answers'], $q_answer);
    }

pg_close($dbc);
echo json_encode($form); 

?>