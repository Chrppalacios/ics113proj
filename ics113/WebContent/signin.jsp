<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Guitar Tablature Website</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="signup.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
      $(function(){
        $("input:checkbox, input:radio, input:file, select").uniform();
      });
    </script>
    <script type="text/javascript">
	function validate() {
		var u = document.getElementById("uname").value;
		var p = document.getElementById("password").value;
		var c = document.getElementById("cpassword").value;
		if (u.length < 6 || u.length > 15) {
			alert("Username must be 6-15 characters");
			uname.style.backgroundColor = "Yellow";
			return false;
		}
		if (p.length < 6) {
			alert("Password must contain at least 6 characters");
			password.style.backgroundColor = "Yellow";
			return false;
		}
		if (c != p){
			alert("Passwords do not match");
			password.style.backgroundColor = "Yellow";
			cpassword.style.backgroundColor = "Yellow";
			return false;
		}
		if (document.getElementById('gender_m').checked && document.getElementById('gender_f')) {
			  //Male radio button is checked
			}
		
	}
</script>
</head>
<body>
<article>
<h1>Sign Up For Free</h1>
<form onsubmit="return validate()" action="process.jsp" method="POST">
	<ul>
        <li>
        	<label for="name">Your Name:</label>
            <input type="text" size="40" id="uname" name="uname" required/>
        </li>
		<li>
			<label for="password">Your Password</label>
			<input type = "password" size = "40" id = "password" name="password" required/>
		</li>
		<li>
			<label for="conpassword">Confirm Your Password</label>
			<input type = "password" size = "40" id = "cpassword" name="cpassword"required/>
		</li>
        <li>
        	<label for="email">Your Email:</label>
            <input type="email" size="40" id="email" name="email" required/>
        </li>

        <li>
            <label><input type="radio" name="radio" id="gender" value="Male"/> Male</label>
            <label><input type="radio" name="radio" id="gender" value="Female" required/> Female</label>
        </li>

        <li>
            <label>Upload your Own Tab?</label>
            <input type="file" />
        </li>
        <li>
        	<label for="message">Your Thoughts?</label>
            <textarea cols="50" rows="5" id="message"></textarea>
		</li>
	</ul>
    <p>
        <input type="submit" class="action" value="Register"/>
        <button type="reset" class="right">Reset</button>
    </p>
</form>
</article>
<footer>
<p>Go Back To <a href="home.html">Home</a></p>
</footer>