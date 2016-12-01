<?php
include "database_config.php";

//Create the insert query
if(isset($_GET['section_id'])){
    $section_id = $_GET['section_id'];
}else{
    $section_id = 2;  
}

$query = "Select * From section where section_id = $section_id";
$result = pg_query($query);


if($result){
    while($row = pg_fetch_assoc($result)){
        $section_name = $row['section_name'];
    }
} else {
    echo '<h1>System Error</h1>';
}



//$dbc->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Survey Test</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  
    
</head>
<body>
    <div class="container"> 
        <form role="form">
            <div class="row">           
                <h2 align= "center"><?php echo $section_name?></h2>
            </div> 
                <?php
                    $query1 = "Select * From question where section_id = $section_id";
                        $result = pg_query($query1);
                        if($result){
                            while($row = pg_fetch_assoc($result)){
                                    $question_id = $row['question_id'];
                                    $content =$row['content'];
                                    $isType = $row['istype'];
                                    $isRadio = $row['isradio'];
                                    $isHidden = $row['ishidden'];
                                    $html ="
                                    <h4>".$content."</h4>";
                                    echo $html;
                                    $query2 = "Select * From question_answer where question_id = $question_id order by answer_order asc";
                                    $result2 = pg_query($query2);
                                    if($result2){
                                        while($row2 = pg_fetch_assoc($result2)){                                                                 
                                            $id = $row2['id'];
                                            $answer =$row2['answer'];
                                            $isType = $row2['istype'];
                                            $hasSubAnswer = $row2['hassubanswer'];
                                            $hasSubQuestion= $row2['hassubquestion'];                                                                          
                                            $subquestion_id= $row2['subquestion_id'];
                                            $Code = $row2['code'];
                                            if($isType == 0){
                                                echo "<div class='row'>
                                                       <input type='radio' name='inputvalue' value=".$id." id = ".$id.">".$answer."                                                     
                                                     </div>";
                                            
                                            }else{
                                                echo "<div class='row'>";
                                                echo "<input type='text' name='inputvalue' id = ".$id." size='5'>";
                                                echo $answer;
                                                echo "</div>";                                            
                                            
                                            }
                                            
                                                                                                                                          
                                        }                           
                                    }else{
                                        echo "System Error";
                                    }
                            }
                         } else {
                              echo "System Error";
                        }                       
                                 
                     
                ?>

            <div class="row">
              <button class="btn btn-primary" name="appsearch" type="button">Next Section</button>
            </div><!-- end row -->         
        </form>
    </div><!-- end container -->

 
 
   
</body>
</html>

 
  
  
