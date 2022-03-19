
<?php

/**** Title: Header/Navigation Pane ****/
//session_start();
$filepage = explode('/',$_SERVER['REQUEST_URI']);
$filepage = end($filepage);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        
<style>
  #clockcontainer{
  float: right;
  margin-top: 27px;
  margin-right: 150px;
}
</style>
        
       <link href="css/bootstrap.min.css" rel="stylesheet">

    
        <link href="css/metisMenu.min.css" rel="stylesheet">

        
       <link href="css/timeline.css" rel="stylesheet">

        
     
        
        <link href="css/morris.css" rel="stylesheet">

        
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/style.css">
		 <link rel="stylesheet" href="style.css">

        
    </head>
<body>

    

            
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			
                  <ul class="nav navbar-right navbar-top-links">
			  <table width="1456">
 
                        <th width="1048" height="80" align="left"><h2 align="left"><font color="#FFFFFF">Online Exam System</font></h2><th width="55">
				           
                           
	<th width="90">
	  <li>
      <font color="#FFFFFF" size="+1"><i class="fa fa-user fa-fw"></i>
      <?php
      if(isset ($_SESSION['user_id']))
      {
        echo $_SESSION['user_name'];

      }?>
      </font></li>
               <th width="72"><li><a href="logout.php"><font color="#FFFFFF" size="+1">Logout</font></a>
    </li></th> 
	 <th width="38"></th>               
               </th> 
               
       
  
                       
</table>		
   </nav>
                              
                              
                                          <div align="center">
                                            <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                                                        <script  src="js/script.js"></script>
                                              
</div>
                                          </div>
