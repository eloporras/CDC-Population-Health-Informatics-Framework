<?php 
//Set the database access information as constants

DEFINE ('DB_USER', 'eloporras');
DEFINE ('DB_PASSWORD', 'florider');
DEFINE ('DB_HOST', 'mydbinstance.cqsq8rv27izy.us-east-1.rds.amazonaws.com');
DEFINE ('DB_NAME', 'survey');

$db_user = "user=eloporras";
$db_password = "password=florider";
$db_host = "host=mydbinstance.cqsq8rv27izy.us-east-1.rds.amazonaws.com";
$db_name = "dbname=survey";


/*DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'survey');*/

//@ $dbc = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$dbc = pg_connect("$db_host $db_user $db_password $db_name");

if(!$dbc)echo "Connection Failed.";
/*
if (mysqli_connect_error()){
	echo "Could not connect to MySql. Please try again";
	exit();
}*/

?>
