<!DOCTYPE html>

<html>
<head>
	<title>Online Exam System</title>
	<link href="https://fonts.googleapis.com/css?family=Lobster|Montserrat" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="styleindex.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>
<body>
	<header>
		<nav>
			<h1>Online Exam System</h1>
			<ul id="navli">
				
			<th width="96" height="57"><li><a href="http://localhost/Online_Examination/index.php"><font color="#FFFFFF" size="+2">Home</font></a></li></th>
			<th width="99" height="57"><li><a href="http://localhost/Online_Examination/user/login.php"><font color="#FFFFFF" size="+2"> Login</font></a></li></th>
					<!--<li><a class="homeblack" href="alogin.php">ADMIN</a></li>-->
			</ul>
		</nav>
	</header>
	
	
	<div class="divider"></div>
	<div id="divimg">
		
	</div>

	
	

		
    <div class="container">
@yield('content');
</div>
	
</body>
</html>
<style>
@import url('https://fonts.googleapis.com/css?family=Lobster');
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700');


body{
	margin: 0px;
}

header{
	background: #5e126b;
	color: white;
	padding: 8px 20px 6px 40px;
	height: 50px;
	min-height: 50px;
    margin-bottom: 20px;
	
    
	
}

header h1{
	display: inline;
	font-family: inherit;
	font-weight: 500;
	font-size: 36px;
	float: left;
	margin-top: 0px;
	margin-right: 10px;
	
	
	
}

nav ul {
	display: inline;
	padding: 0px;
	float: right;
}

nav ul li{
	display: inline-block;
	list-style-type: none;
	color: white;
	float: left;
	margin-left: 12px;
}
nav ul li a{
	color: white;
	text-decoration: none;	
}


nav ul ul{
	display: none;
	position: absolute;
}

#navli ul li ul:hovar{
	visibility: visible;
	display: block;
}





#navli{
	font-family: sans-serif;
	
}

#divimg{
	
	background-repeat: no-repeat;
	background-size: cover;
	background-image: : url('../images/back.jpg');
	padding: 0px;
	margin: 10px;
	height: 100%;
	width: 100%;
}


#registration{
	padding: 2px 2px 2px 2px;
	text-align: center;
	background-color: #F0FFFF;
	height: 100%;
	width: auto;
	background-position: center;
}

#textField{
	width: 350px;
	height: 50px;
	padding: 5px;
	border-radius: 5px;
	font-family: 'Montserrat', sans-serif;
}


#gender{
	font-family: 'Montserrat', sans-serif;
}

#sub{
	width: 350px;
	height: 50px;
	padding: 5px;
	border-radius: 5px;
	outline: 0px;
	background-color: #0c6996;
}

.table-emp{
	padding: 5px;
	height: auto;
	width: 100%;
	font-family: 'Montserrat', sans-serif;
	text-align: center;
	background-color: #4CAF50;
}

.table-emp tr th {
  background-color: #4CAF50;
  color: white;
}

#clockcontainer{
  float: right;
  margin-top: 27px;
  margin-right: 150px;
}



.simple-form1{
	margin-left: 10px; 
	padding: 2px 2px 2px 2px;
	text-align: center;
	background-color: #F0FFFF;
	height: auto;
	width: auto;
	background-position: center;
	
}



.leavetable{
	width: 100%;
	height: auto;
}

#textField{
	width: 350px;
	height: 50px;
	padding: 5px;
	border-radius: 5px;
	font-family: 'Montserrat', sans-serif;
}



.info{
	margin-left: 10px;
	padding: 100px;
}



.h2{
	font-family: 'Montserrat', sans-serif;
}


</style>