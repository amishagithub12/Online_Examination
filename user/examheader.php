<?php
include("check.php");
?>
<?php

include("dbh.php");

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

        
    </head>
    <body>

        <div id="wrapper">

            
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                  <ul class="nav navbar-right navbar-top-links">

               
                 <li class="dropdown">
                           <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>
                            <?php
      if(isset ($_SESSION['user_id']))
      {
        echo $_SESSION['user_name'];

      }
      else
      {
        echo 'USER';
      }

    ?>
    
                    </li>
                </ul>

               
           
<div id="countdown">
  <div id='tiles'></div>
  
</div>
            </nav>

                               
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="js/script.js"></script>