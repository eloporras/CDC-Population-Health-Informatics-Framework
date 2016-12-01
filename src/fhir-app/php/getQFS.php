<?php
include "database_config.php";

//Create the insert query
if(isset($_GET['section_id']))$section_id = $_GET['section_id'];
else exit("Malformed ID");

$form = array("Section", array("Q Code", "Question Text", array("")), );

// Get Section name
if($result = pg_query("Select * From section where section_id = $section_id"))
    while($row = pg_fetch_assoc($result))
        $section_name = $row['section_name'];

if(!isset($section_name))exit(json_encode(-1));


// Build Form Header
$form = array("code" => $section_id, 
              "template" => "list", 
              "name" => $section_name,
              "templateOptions" => array("obrHeader" => false, "hideHeader" => true, "hideUnits" => true, "displayControl" => array("questionLayout"=> "vertical"),
                                          "obxTableColumns" => array(
                                                                     array("name" => "Question", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%"))),
                                                                     array("name" => "null", "displayControl" => array("colCSS" => array("name" => "width", "value" => "0%"))),
                                                                     array("name" => "Value", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%"))),
                                                                     array("name" => "Units", "displayControl" => array("colCSS" => array("name" => "width", "value" => "30%")))
                                                                    )
                                        ), 
              "items" => array()); 

               
// Get Question(s) from section
if($result = pg_query("Select * From question where section_id = $section_id"))
{
    $question_counter = 0; // Questions are not tracked by key
    while($row = pg_fetch_assoc($result))
    {
        $question_id = $row['question_id'];
        $content =$row['content'];
        $isType = $row['istype'];
        $isRadio = $row['isradio'];
        $isHidden = $row['ishidden'];
        $selection = $row['selection']; //List, need to adjust parameter

        // Build Question
        $item = array("questionCode" => $question_id, 
                      "question" => $content, 
                      "displayControl" => array("questionLayout" => "horizontal", "answerLayout" => "list"), 
                      "answers" => array(), 
                      "dataType" => "CNE");
                             
        array_push($form['items'], $item);

        // Get Answer(s) from question
        if($result2 = pg_query("Select * From question_answer where question_id = $question_id order by answer_order asc"))
        {
            while($row2 = pg_fetch_assoc($result2))
            {                                                                
                $id = $row2['id'];
                $answer =$row2['answer'];
                $isType = $row2['istype'];
                $hasSubAnswer = $row2['hassubanswer'];
                $hasSubQuestion= $row2['hassubquestion'];                                                                          
                $subquestion_id= $row2['subquestion_id'];
                $Code = $row2['code'];

                // Build Answer
                $q_answer = array("text" => $answer, "code" => $id);

                // Append Values by condition
                if($isType)$q_answer['other'] = "REAL";
                
                array_push($form['items'][$question_counter]['answers'], $q_answer);
            }                           
        }else error_log("ERROR: No Answer(s) for question $question_id \n", 3, "log/pg_sql_error.log");
        $question_counter++; // Next Question
    }
} else error_log("ERROR: No Question(s) in section $section_id \n", 3, "log/pg_sql_error.log");

// Close the connection
pg_close($dbc);
echo json_encode($form);         
?>
 
  
  
