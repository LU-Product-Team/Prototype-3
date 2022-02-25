<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="/sassy.css">
    <script src="/jquery.js"></script>
    <script src="https://kit.fontawesome.com/503b395450.js" crossorigin="anonymous"></script>
    <script src="loadelements.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    
    <!-- FEATURE STYLING -->
    <style>


    </style>
  </head>

  <!-- CONTENT FOR MAIN PAGE -->
  <body style="background-color:#242424;">
    <header id=header></header>
    <main>

        <!-- GAME SCORE BANNER -->
        <div id="score">
            <div>
                LIB<br>22 - 14
            </div>
            <img src="Liberty-Flames-logo (1).png" alt="Liberty Logo" width="70" height="40">
            <div style="line-height: 40px; font-size: 30px;">
                7 - 5
            </div>
            <img src="Cambell logo.png" alt="Liberty Logo" width="55" height="40">
            <div>
                CAM<br>13 - 25
            </div>
            <div style="clear: both;float: none;"></div>
        </div>

        <!-- BOX SCORE TABLE -->
        <div id="summary">
            <p style="text-align: left; font-weight: bold; font-size: 15px;">Scoring Summary</p>
        <table>
            <tr>
              <th></th>
              <th>0</th>
              <th>1</th>
              <th>2</th>
              <th>3</th>
              <th>4</th>
              <th>5</th>
              <th>6</th>
              <th>7</th>
              <th>8</th>
              <th>9</th>
              <th>R</th>
              <th>H</th>
            </tr>
            <tr>
              <td>LIB</td>
              <td>0</td>
              <td>2</td>
              <td>0</td>
              <td>1</td>
              <td>1</td>
              <td>0</td>
              <td>3</td>
              <td>0</td>
              <td>-</td>
              <td>-</td>
              <td>7</td>
              <td>13</td>
            </tr>
            <tr>
              <td>CAM</td>
              <td>2</td>
              <td>0</td>
              <td>0</td>
              <td>1</td>
              <td>1</td>
              <td>0</td>
              <td>0</td>
              <td>-</td>
              <td>-</td>
              <td>-</td>
              <td>5</td>
              <td>10</td>
            </tr>
            </tr>
        </table>
        </div>

        
        <?php 
        use baseball\DataSource;
        include 'db_baseball.php';

        $db = new DataSource();
        $conn = $db->getConnection();

        $sql = "SELECT * FROM questions ORDER BY RAND() LIMIT 1";
        $result = $conn->query($sql);

        $ran_question = mysqli_fetch_array($result);

        $point = $ran_question['Question_ID'];
        $question = $ran_question['Question'];
        


        ?>
        <!-- PARTICIPATION QUESTIONS -->
        <div style="text-align: left; font-weight: bold; font-size: 40px; color: #C4C4C4; margin: 10px 10px 10px 10px;">Earn <span id="ptsval">250</span> Points</div>
        <div id="questions">
            <div id="question">Trivia: What year was the game of baseball created?</div>
            <div class="option" id="optA">
              1) <span>1879</span>
            </div>
            <div class="option" id="optB">
              2) <span>2021</span>
            </div>
            <div class="option" id="optC">
              3) <span>1983</span>
            </div>
            <div class="option" id="optD">
              4) <span>1846</span>
            </div>
        </div>
        <div id="results">Question Results Loading...</div>

    </main>
    <footer id=footer></footer>
    <script src="questions.js"></script>
  </body>
</html>

