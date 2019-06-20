<!-- CS174 - siddharth kulkarni - 012432628 -->

<?php 
	session_start(); 

	if (!isset($_SESSION['username'])) {
		$_SESSION['msg'] = "You must log in first";
		header('location: login.php');
	}

	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header("location: login.php");
	}

	if(isset($_POST['submit']) && isset($_FILES['fileToUpload'])){
		$errors = array();
		$input1 = $_POST['fileName'];
		$input2 = file_get_contents($_FILES['fileToUpload']['tmp_name']);
		$username = $_SESSION['username'];
		$db = mysqli_connect('localhost', 'root', '', 'cs174_2');
		$fileType = $_FILES['fileToUpload']['type'];
		if($fileType!='text/plain'){
			array_push($errors, "Please upload text file only");
		}else{
			$query = "INSERT INTO data (file_name,file_contents,username) VALUES ('" . $input1 . "' ,'". $input2 . "','". $username . "')";
			$results = mysqli_query($db, $query);
			if (($results) == 1) {
				$_SESSION['success'] = "Successfully uploaded file";
			}else{
				array_push($errors, "There was an error");
			}
		}
		
	}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<style>
		

* {
	margin: 0px;
	padding: 0px;
}
body {
	font-size: 120%;
	background: #F8F8FF;
	font-family: 'Roboto', sans-serif;
}

.header {
	width: 50%;
	margin: 50px auto 0px;
	color: white;
	background: #3b5998;
	text-align: center;
	border: 1px solid #B0C4DE;
	border-bottom: none;
	padding: 20px;
}
form, .content {
	width: 50%;
	margin: 0px auto;
	padding: 20px;
	background: white;
}
.input-group {
	margin: 10px 0px 10px 0px;
	text-align: center;
}

.input-group label {
	display: block;
	text-align: center;
	margin: 3px;
}
.input-group input {
	height: 30px;
	width: 63%;
	padding: 5px 10px;
	font-size: 16px;
}
.btn {
	padding: 10px;
	font-size: 15px;
	color: white;
	background: #3b5998;
	border: none;
}
.error {
	width: 92%; 
	margin: 0px auto; 
	padding: 10px; 
	border: 1px solid #a94442; 
	color: #a94442; 
	background: #f2dede; 
	text-align: left;
}
.success {
	color: #3c763d; 
	background: #dff0d8; 
	border: 1px solid #3c763d;
	margin-bottom: 20px;
}

	</style>
</head>
<body>
	<div class="header">
		<h2>Home Page</h2>
	</div>
	<div class="content">

		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>

		<!-- logged in user information -->
		<?php  if (isset($_SESSION['username'])) : ?>
			<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
			<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
			<br>
		<?php endif ?>

		<?php include('check.php') ?>

	</div>
		
</body>
</html>