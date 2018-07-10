<?php
  # Open connection to mysql database

  # Production:
  # $mysqli = new mysqli("sql303.byetcluster.com", "epiz_22356063", "rtsyk8jb", "epiz_22356093_simslegacy");

  # Development:
  $mysqli = new mysqli("localhost", "root", "", "simslegacy");

  # Get all marital status
  $marital_status_arr = array();
  $marital_status = $mysqli->query("SELECT * FROM maritalstatus");
  while($row = mysqli_fetch_array($marital_status, MYSQLI_ASSOC)) {
    $marital_status_arr[] = $row;
  }

  # Get all conventional careers
  $conventional_arr = array();
  $conventionals = $mysqli->query("SELECT * FROM careers WHERE conventional = true");
  while($row = mysqli_fetch_array($conventionals, MYSQLI_ASSOC)) {
    $conventional_arr[] = $row;
  }

  # Get all unconventional careers
  $unconventional_arr = array();
  $unconventionals = $mysqli->query("SELECT * FROM careers WHERE conventional = false");
  while($row = mysqli_fetch_array($unconventionals, MYSQLI_ASSOC)) {
    $unconventional_arr[] = $row;
  }

  # Get all generation goals:
  $gen_goals_arr = array();
  $gengoals = $mysqli->query("SELECT * FROM gengoals");
  while($row = mysqli_fetch_array($gengoals, MYSQLI_ASSOC)) {
    $gen_goals_arr[] = $row;
  }

  # Get all midlifecrises:
  $midlifecrises_arr = array();
  $midlifecrises = $mysqli->query("SELECT * FROM midlifecrisis");
  while($row = mysqli_fetch_array($midlifecrises, MYSQLI_ASSOC)) {
    $midlifecrises_arr[] = $row;
  }

  # Get all miscellaneous fun:
  $misc_arr = array();
  $misc = $mysqli->query("SELECT * FROM misc");
  while($row = mysqli_fetch_array($misc, MYSQLI_ASSOC)) {
    $misc_arr[] = $row;
  }

  # Get all colors:
  $colors_arr = array();
  $colors = $mysqli->query("SELECT * FROM colors");
  while($row = mysqli_fetch_array($colors, MYSQLI_ASSOC)) {
    $colors_arr[] = $row;
  }

  # Close connection to the database
  mysqli_close($mysqli);
?>
