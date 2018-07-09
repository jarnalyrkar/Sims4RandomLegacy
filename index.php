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

<!doctype php>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Sims 4 Legacy Challenge</title>
  </head>
  <body>
    <div class="container">
      <div class="text-right"><i>Last updated: July 7th 2018</i></div>

      <div class="text-center">
        <button class="btn btn-lg btn-success" onclick="randomAll()">Roll!</button>
      </div>

      <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th style="width: 1%" scope="col"></th>
              <th style="width: 15%" scope="col">Attribute</th>
              <th style="width: 84%" scope="col">Result</th>
            </tr>

            <tr>
              <td><button onclick="getMaritalStatus()" class="btn btn-primary">Re-roll!</button></td>
              <td>Marital Status</td>
              <td>
                <a id="marital_title" data-toggle="collapse" href="#collapseMarital" role="button" aria-expanded="false" aria-controls="collapseMarital"></a>
                <div class="collapse" id="collapseMarital">
                  <div id="marital_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <tr>
              <td><button onclick="getChildren()" class="btn btn-primary">Re-roll!</button></td>
              <td>Children</td>
              <td id="children_txt"></td>
            </tr>

            <tr>
              <td><button onclick="getPrimaryCareer()" class="btn btn-primary">Re-roll!</button></td>
              <td>Primary Career</td>
              <td>
                <a id="primary_career_title" data-toggle="collapse" href="#collapsePrimaryCareer" role="button" aria-expanded="false" aria-controls="collapsePrimaryCareer"></a>
                <div class="collapse" id="collapsePrimaryCareer">
                  <div id="primary_career_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <tr id="secondary_career_row" style="display: none;">
              <td><button onclick="getSecondaryCareer()" class="btn btn-primary">Re-roll!</button></td>
              <td id="secondary_attribute"></td>
              <td>
                <a id="secondary_career_title" data-toggle="collapse" href="#collapseSecondaryCareer" role="button" aria-expanded="false" aria-controls="collapseSecondaryCareer"></a>
                <div class="collapse" id="collapseSecondaryCareer">
                  <div id="secondary_career_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <tr>
              <td><button onclick="getGenerationalGoal()" class="btn btn-primary">Re-roll!</button></td>
              <td>Generational Goal</td>
              <td>
                <a id="gengoal_title" data-toggle="collapse" href="#collapseGenGoal" role="button" aria-expanded="false" aria-controls="collapseGenGoal"></a>
                <div class="collapse" id="collapseGenGoal">
                  <div id="gengoal_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <tr id="midlife_row" style="display: none;">
              <td><button onclick="getMidlifeCrisis()" class="btn btn-primary">Re-roll!</button></td>
              <td>Midlife Crisis</td>
              <td>
                <a id="midlife_title" data-toggle="collapse" href="#collapseMidlifeCrises" role="button" aria-expanded="false" aria-controls="collapseMidlifeCrises"></a>
                <div class="collapse" id="collapseMidlifeCrises">
                  <div id="midlife_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <tr>
              <td><button onclick="getMiscellaneousFun()" class="btn btn-primary">Re-roll!</button></td>
              <td>Miscellaneous Fun</td>
              <td>
                <a id="misc_title" data-toggle="collapse" href="#collapseMisc" role="button" aria-expanded="false" aria-controls="collapseMisc"></a>
                <div class="collapse" id="collapseMisc">
                  <div id="misc_description" class="card card-body"></div>
                </div>
              </td>
            </tr>

            <!-- Hide if misc_fun != Rainbow Brite ([24]) -->
            <tr id="color_row" style="display: none;">
              <td><button onclick="getColor()" class="btn btn-primary">Re-roll!</button></td>
              <td>Color</td>
              <td id="color_txt"></td>
            </tr>
          </thead>
        </table>
        </div>

        <!--  -->

        <div><h4>Conventional Careers:</h4>
          <div id="rowStuff" class="row">
            <div id="doStuff"></div>
          </div>
        </div>
    </div>

    <script>
    var marital_title;
    var marital_description;
    var working_sims;
    var career_title;
    var career_description;
    var secondary_title;
    var secondary_description;
    var midlife_title;
    var midlife_description;
    var gengoal_title;
    var gengoal_description;
    var misc_title;
    var misc_description;

    var conventionals = JSON.parse('<?php echo json_encode($conventional_arr, JSON_HEX_APOS); ?>');
    var unconventionals = JSON.parse('<?php echo json_encode($unconventional_arr, JSON_HEX_APOS); ?>');

    document.addEventListener ("DOMContentLoaded", function() {
      for (var i = 0; i < conventionals.length; i++) {
        var element = document.createElement("div");
        var att = document.createAttribute("class");
        att.value = "col";
        element.setAttributeNode(att);

        // Add a row each 4 columns
        if (i % 4) {
          var row = document.createElement("div");
          var rowAtt = document.createAttribute("class");
          rowAtt.value = "row";

          document.getElementById("doStuff").appendChild(row);
        }

        element.innerHTML = "<input type=\"checkbox\" checked>" + conventionals[i]['career'];

        document.getElementById("doStuff").appendChild((element));
      }

    });
    function listenToCheckbox(id, model, index) {
      var checkbox = document.querySelector("input[name=checkbox]");

      checkbox.addEventListener( 'change', function() {
          if(!this.checked) {
            model[index]['active'] = 0;
          }
});
    }
    function getMaritalStatus() {
        var marital_status = JSON.parse('<?php echo json_encode($marital_status_arr, JSON_HEX_APOS); ?>');
        var num = randomBetween(1, 25);
        var lastStatus;
        if (num == lastStatus) {
          num = randomBetween(1, 25);
        }
        if (num > 0 && num <= 5) {
          marital_title = marital_status[0]["title"];
          marital_description = marital_status[0]['description'];
          working_sims = marital_status[0]['working_sims']
        } else if (num > 5 && num <= 15){
          marital_title = marital_status[1]["title"];
          marital_description = marital_status[1]['description'];
          working_sims = marital_status[1]['working_sims']
        } else if (num == 16) {
          marital_title = marital_status[2]["title"];
          marital_description = marital_status[2]['description'];
          working_sims = marital_status[2]['working_sims']
        } else if (num == 17) {
          marital_title = marital_status[3]["title"];
          marital_description = marital_status[3]['description'];
          working_sims = marital_status[3]['working_sims']
        } else if (num == 18) {
          marital_title = marital_status[4]["title"];
          marital_description = marital_status[4]['description'];
          working_sims = marital_status[4]['working_sims']
        } else if (num == 19) {
          marital_title = marital_status[5]["title"];
          marital_description = marital_status[5]['description'];
          working_sims = marital_status[5]['working_sims']
        } else if (num == 20) {
          marital_title = marital_status[6]["title"];
          marital_description = marital_status[6]['description'];
          working_sims = marital_status[6]['working_sims']
        } else if (num == 21) {
          marital_title = marital_status[7]["title"];
          marital_description = marital_status[7]['description'];
          working_sims = marital_status[7]['working_sims']
        } else if (num == 22) {
          marital_title = marital_status[8]["title"];
          marital_description = marital_status[8]['description'];
          working_sims = marital_status[8]['working_sims']
        } else if (num == 23) {
          marital_title = marital_status[9]["title"];
          marital_description = marital_status[9]['description'];
          working_sims = marital_status[9]['working_sims']
        } else if (num == 24) {
          marital_title = marital_status[10]["title"];
          marital_description = marital_status[10]['description'];
          working_sims = marital_status[10]['working_sims']
        } else {
          marital_title = marital_status[11]["title"];
          marital_description = marital_status[11]['description'];
          working_sims = marital_status[11]['working_sims']
        }

        var lastStatus = num;

        if (working_sims > 1) {
          document.getElementById("secondary_career_row").style.display = "";
          document.getElementById("secondary_attribute").innerHTML = "Secondary Career";
        } else {
            document.getElementById("secondary_career_row").style.display = "none";
        }

        document.getElementById("marital_title").innerHTML = marital_title;
        document.getElementById("marital_description").innerHTML = marital_description;
      }

    function getChildren() {
        document.getElementById("children_txt").innerHTML = randomBetween(1, 5);
      }

    function getPrimaryCareer() {

      // activate(model, num);
      // deactivate(model, num);
      conventionals[0]['active'] = 0;

      var filter = [];
      var j = 0;
      for (var i = conventionals.length-1; i >= 0; i--) {
        if (conventionals[i]['active'] == 0) {
          console.log(conventionals[i]['career'] + " is not active.")
        } else {
            filter[j] = conventionals[i];
            console.log(filter[j]['career']);
            j++;
        }
      }

      conventionals = filter;

      var careerType = randomBetween(0, 10); // Dice roll
      var randConNum = randomBetween(0, conventionals.length-1);
      var randUnconNum = randomBetween(0, unconventionals.length-1);

      if (careerType > 5 && careerType < 10) {
        career_title = unconventionals[randUnconNum]["career"];
        career_description = unconventionals[randUnconNum]["description"];
      } else if (careerType < 6) {
        career_title = conventionals[randConNum]["career"];
        career_description = conventionals[randConNum]["description"];
      } else if (careerType == 10) {
        career_title = "Career Hopper: ";
        for (var i = 0; i < 5; i++) {
          var lastJob;
          randConNum = randomBetween(0, 30);
          if (lastJob == randConNum){
            randConNum = randomBetween(0, 30);
          }
          if (i < 4) {
            career_title += conventionals[randConNum]["career"] + ", ";
            career_description += conventionals[randConNum]["description"] + ", ";
          } else {
            career_title += conventionals[randConNum]["career"];
            career_description += conventionals[randConNum]["description"];
          }
          lastJob = randConNum;
        }
      }

      document.getElementById("primary_career_title").innerHTML = career_title;
      document.getElementById("primary_career_description").innerHTML = career_description;
    }

    function getSecondaryCareer() {
      var conventionals = JSON.parse('<?php echo json_encode($conventional_arr, JSON_HEX_APOS); ?>');
      var unconventionals = JSON.parse('<?php echo json_encode($unconventional_arr, JSON_HEX_APOS); ?>');
      secondary_title = "";
      secondary_description = "";
      for (var i = 0; i < working_sims-1; i++) {
        var careerType = randomBetween(0, 10); // Dice roll
        var randConNum = randomBetween(0, conventionals.length-1);
        var randUnconNum = randomBetween(0, unconventionals.length-1);
        if (careerType > 3 && careerType < 9) {
          if (i < (working_sims-2)) {
            secondary_title += unconventionals[randUnconNum]["career"] + ", ";
          } else {
            secondary_title += unconventionals[randUnconNum]["career"];
          }
          secondary_description += "<br><b>(" + (i+1) + ") " + unconventionals[randUnconNum]["career"] + "</b>" + unconventionals[randUnconNum]["description"];
        } else if (careerType < 4) {
          if (i < (working_sims-2)) {
            secondary_title += conventionals[randConNum]["career"] + ", ";
          } else {
            secondary_title += conventionals[randConNum]["career"];
          }
          secondary_description += "<br><b>(" + (i+1) + ") " + conventionals[randConNum]["career"] + "</b>" + conventionals[randConNum]["description"];
        } else if (careerType == 9) {
          secondary_title += "Career Hopper: ";
          secondary_description += "<br><b>(" + (i+1) + ") " + "Career Hopper:</b>";
          for (var i = 0; i < 5; i++) {
            var lastJob;
            randConNum = randomBetween(0, 30);
            if (lastJob == randConNum){
              randConNum = randomBetween(0, 30);
            }
            if (i < 4) {
              secondary_title += conventionals[randConNum]["career"] + ", ";
              secondary_description += "<br><b>" + conventionals[randConNum]["career"] + "</b>"+ conventionals[randConNum]["description"] + " ";
            } else {
              secondary_title += conventionals[randConNum]["career"];
              secondary_description += "<br><b>" + conventionals[randConNum]["career"] + "</b>" + conventionals[randConNum]["description"];
            }
            lastJob = randConNum;
          }
        } else if (careerType == 10) {
          secondary_title += "Unemployed";
          secondary_description += "<br><b>(" + (i+1) + ") Unemployed</b>" + "<br>This sim may not earn any money.";
        }
      }

      document.getElementById("secondary_career_title").innerHTML = secondary_title;
      document.getElementById("secondary_career_description").innerHTML = secondary_description;
    }

    // TODO: Permit special characters in JSON
    function getGenerationalGoal() {
      var gengoals = JSON.parse('<?php echo json_encode($gen_goals_arr, JSON_HEX_APOS); ?>');

      var randomGenGoals = randomBetween(0, gengoals.length-1);

      gengoal_title = gengoals[randomGenGoals]["title"];
      gengoal_description = gengoals[randomGenGoals]["description"];

      document.getElementById("gengoal_title").innerHTML = gengoal_title;
      document.getElementById("gengoal_description").innerHTML = gengoal_description;

      if (randomGenGoals == 11) {
        document.getElementById("midlife_row").style.display = "";
      } else document.getElementById("midlife_row").style.display = "none";

    }

    function getMidlifeCrisis() {
      var midlifecrises = JSON.parse('<?php echo json_encode($midlifecrises_arr, JSON_HEX_APOS); ?>');

      midlife_title = "";
      midlife_description = "";

      var crisesArr = getUniqueRandomArrayBetween(3, 0, 10);

      for (var i = 0; i < 3; i++) {
        if (i < 2) {
            midlife_title += midlifecrises[crisesArr[i]]["title"] + ", ";
            midlife_description += "<b>" + midlifecrises[crisesArr[i]]["title"] + "</b><br>" + midlifecrises[crisesArr[i]]["description"];
        } else {
          midlife_title += midlifecrises[crisesArr[i]]["title"];
          midlife_description += "<b>" + midlifecrises[crisesArr[i]]["title"] + "</b><br>" + midlifecrises[crisesArr[i]]["description"];
        }
      }
      document.getElementById("midlife_title").innerHTML = midlife_title;
      document.getElementById("midlife_description").innerHTML = midlife_description

    }

    // TODO: Permit special characters in JSON
    function getMiscellaneousFun() {
      var miscfun = JSON.parse('<?php echo json_encode($misc_arr, JSON_HEX_APOS); ?>');

      var miscNum = randomBetween(0, miscfun.length-1);

      misc_title = miscfun[miscNum]["title"];
      misc_description = miscfun[miscNum]["description"];
      document.getElementById("misc_title").innerHTML = misc_title;
      document.getElementById("misc_description").innerHTML = misc_description;

      if (miscNum == 24) {
        document.getElementById("color_row").style.display = "";
      } else document.getElementById("color_row").style.display = "none";

    }

    // Gets a color
    function getColor() {
        var colors = JSON.parse('<?php echo json_encode($colors_arr); ?>');
        document.getElementById("color_txt").innerHTML = colors[randomBetween(0, colors.length)]["color"];
      }

    // Randomizes all rows
    function randomAll() {
      getMaritalStatus();
      getChildren();
      getPrimaryCareer();
      getSecondaryCareer();
      getGenerationalGoal();
      getMidlifeCrisis();
      getMiscellaneousFun();
      getColor();
    }

    // Gets a random number between min and max
    function randomBetween(min, max) {
      return Math.floor((Math.random() * max) + min);
    }

    // Gets an array length, a min and max value,
    // and populates an array with unique values in the range given.
    function getUniqueRandomArrayBetween(arrLength, min, max) {
      var arr = [];
      while (arr.length < arrLength) {
        var randomNumber = randomBetween(min, max);
        if (arr.indexOf(randomNumber) > -1) continue;
        arr[arr.length] = randomNumber;
      }
      return arr;
    }

    </script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
