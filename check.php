<?php
	$output = "";
	if (isset($_POST['check'])) {

		include('./crypto/ss.php');
		include('./crypto/rc4.php');
		include('./crypto/dt.php');

		$cipher = $_POST['cipherList'];
		$action = $_POST['cipherAction'];
		
		
		if($_POST['inputText']==""){
			if(isset($_FILES['inputFile'])){
				$fileType = $_FILES['inputFile']['type'];
				if($fileType=='text/plain'){
					$input = file_get_contents($_FILES['inputFile']['tmp_name']);
				}else{
					echo "Wrong File Type, aborting" . "<br>";
					exit();
				}
			}
		}else{
			$input = $_POST['inputText'];
		}

		// storing into database
		$config = parse_ini_file('./config.ini');
		$db = mysqli_connect($config['servername'], $config['username'], $config['password'], $config['dbname']);
		if (isset($_SESSION['username'])) {
			$loggedInUser = $_SESSION['username'];
			$query = "INSERT INTO uploads (input, cipher, username) 
					  VALUES('$input', '$cipher', '$loggedInUser')";
		}else{
			$query = "INSERT INTO uploads (input, cipher) 
					  VALUES('$input', '$cipher')";
		}		
        mysqli_query($db, $query);

		// apply encryption and show to user
		if($cipher=='ss'){
			$cipherText;
			$plainText;
			$ssCipherAlphabet = "yhkqgvxfoluapwmtzecjdbsnri";
			if($action=='encrypt'){
				ssEncipher($input, $ssCipherAlphabet, $cipherText);
				$output = $cipherText;
			}else if($action=='decrypt'){
				ssDecipher($input, $ssCipherAlphabet, $plainText);
				$output = $plainText;
			}
		}else if($cipher=='dt'){
			$key = "pangram";
			if($action=='encrypt'){
				$output = dtEncipher($input, $key, '-');
			}else if($action=='decrypt'){
				$output = dtDecipher($input, $key);
			}
		}else if($cipher=='rc4'){	
			//hardcoding rc4 secret for now
			$secret = "0123456789abcdef";
			$output = rc4($secret, $input);
		}
		
     

	}
?>

<form action="<?=$_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data" style="text-align: center">
	<hr><br>
		Select Cipher: 
		<select name="cipherList">
			<option value="ss">Simple Substitution</option>
			<option value="dt">Double Transposition</option>
			<option value="rc4">RC4</option>
		</select>
		<br><br>
		Select Type: 
		<select name="cipherAction">
			<option value="encrypt">Encrypt</option>
			<option value="decrypt">Decrypt</option>
		</select>
		<br><br>
		<p>Enter text here:</p><br>
		<textarea rows="10" cols="45" name="inputText"></textarea>
		<br><br>
		<h6>OR</h6>
		<br>
		<p>Submit text file here:</p><br>
		<input type="file" name="inputFile" id="inputFile" accept="text/plain">
		<br><br>
		<button class="btn" type="submit" name="check">Start!</button>	
		<br><br>

		<?php
			if($output!=''){
				echo "Result: " . $output;	
			}
		?>

</form>