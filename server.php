<!-- CS174 - siddharth kulkarni - 012432628 -->
<?php
    session_start();

    $config = parse_ini_file('./config.ini');

    // variable declaration
    $username = "";
    $email    = "";
    $errors = array();
    $_SESSION['success'] = "";

    // connect to database
    // $db = mysqli_connect('localhost', 'root', '', 'cs174_2');
    $db = mysqli_connect($config['servername'], $config['username'], $config['password'], $config['dbname']);

    // REGISTER USER
    if (isset($_POST['reg_user'])) {
        // receive all input values from the form
        $username = mysqli_real_escape_string($db, $_POST['username']);
        $email = mysqli_real_escape_string($db, $_POST['email']);
        $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
        $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

        // form validation: ensure that the form is correctly filled
        if (empty($username)) {
            array_push($errors, "Username is required");
        }
        if (empty($email)) {
            array_push($errors, "Email is required");
        }
        if (empty($password_1)) {
            array_push($errors, "Password is required");
        }

        if ($password_1 != $password_2) {
            array_push($errors, "The two passwords do not match");
        }

        // check username validity
        $VALID = False;
        $allowed = array("-", "_");
        if(ctype_alnum(str_replace($allowed, '', $username ))) {
            $VALID = True;
        }
        if(!$VALID){
            array_push($errors, "Username can only contain English letters, digits, '-' and '_'");
        }

        //check password strength
        $VALID2 = False;
        if (preg_match('/^((?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9]).{6,})\S$/', $password_1)) {
            $VALID2 = True;
        }
        if(!$VALID2){
            array_push($errors, "Weak password");
        }

        // register user if there are no errors in the form
        if (count($errors) == 0) {
            $password = md5($password_1);//encrypt the password before saving in the database
            $query = "INSERT INTO users (username, email, password) 
					  VALUES('$username', '$email', '$password')";
            mysqli_query($db, $query);

            $_SESSION['username'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: index.php');
        }
    }

    // LOGIN USER
    if (isset($_POST['login_user'])) {
        $username = mysqli_real_escape_string($db, $_POST['username']);
        $password = mysqli_real_escape_string($db, $_POST['password']);

        if (empty($username)) {
            array_push($errors, "Username is required");
        }
        if (empty($password)) {
            array_push($errors, "Password is required");
        }

        if (count($errors) == 0) {
            $password = md5($password);
            $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
            $results = mysqli_query($db, $query);

            if (mysqli_num_rows($results) == 1) {
                $_SESSION['username'] = $username;
                $_SESSION['success'] = "You are now logged in";
                header('location: index.php');
            } else {
                array_push($errors, "Wrong username/password combination");
            }
        }
    }

    mysqli_close($db);

?>