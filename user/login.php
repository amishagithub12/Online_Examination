<?php
//include("header.php");?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
		<title></title>
        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="../css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../css/dataTables/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS -->
     <!-- <link href="../css/startmin.css" rel="stylesheet">-->

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
      <!--  <link href="css/startmin.css" rel="stylesheet">-->

        <!-- Custom Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

        
    </head>
    <body>
	 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			
                  <ul class="nav navbar-right navbar-top-links">
				  
				  <table width="1506">
				  <br>
				  <th width="1038" align="left"><h1 align="left"><font color="#FFFFFF">Online Exam System</font></h1><th width="92">
 <th width="96" height="57"><li><a href="admin.php"><font color="#FFFFFF" size="+1">Home</font></a></li></th>
 <!--<th width="99"><li><font color="#FFFFFF" size="+1"> Login</font></li></th>
-->                        
    <th width="157"><li><a href="http://127.0.0.1:8000/"> <font color="#FFFFFF" size="+1">Register</font></a></li></th>
                       
                        
						
                            
	</table>		
                                                                               
      </nav>
<br><br><br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <form action="user.php" method="POST">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Email" name="username" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>

                                                                          
                                    <br>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <button class="btn btn-lg btn-success btn-block" name="btn">Login</button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    
    </body>
</html>
