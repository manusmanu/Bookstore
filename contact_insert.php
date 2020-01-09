<!-- <?php
session_start();
  require_once "./functions/database_functions.php";
	$conn = db_connect();

$name = $_POST["name"];
$email = $_POST["email"];
$message = $_POST["message"];

$insert = "INSERT INTO contact(name, email, message) VALUES ('$name', '$email', '$message')";
			$Result = mysqli_query($conn, $insert);
			if(!$Result){
				echo "Error!!";
				exit;
			}

header ("location:index.php");
?> -->