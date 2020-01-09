<?php  
session_start();
$conn = mysqli_connect("localhost", "root", "", "www_project");

	$id=2;
	$query="CALL pub_list($id)";
	
	if($result=mysqli_query($conn, $query))
	{
	while($row=mysqli_fetch_row($result))
	{
		print($row[1]);
		echo "<br>";	
	}
	}
?>