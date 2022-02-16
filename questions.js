// Arrays for questions
// Format: questionX = ["Question",PointValue,"AnswerA","AnswerB","AnswerC","AnswerD","CorrectAnswer"];
// Syntax for correct answer: optA for 1st one, optB for 2nd one, etc.

questionA = ["What year was the game of baseball created?", 250, 1879, 2021, 1983, 1846, 1846];
questionB = ["Who has the most amount of Home Runs in MLB History?", 300, "Babe Ruth", "Barry Bonds", "Alex Rodriguez", "Henry Aaron", "Barry Bonds"];
questionC = ["Which MLB Teams has the most World Seires Wins?", 300, "Washington D.C. Nationals", "Boston Red Socks", "New York Yankees", "Los Angeles Dodgers", "New York Yankees"];
questionD = ["Who was the first African American Baseball player in the MLB?", 400, "Jackie Robinson", "Moses Fleetwood Walker", "Larry Doby", "Terry Sipantzi", "Moses Fleetwood Walker"];
questions = [questionA,questionB,questionC,questionD];

// Script to randomly choose a question ID

randInt = 999999;
function newRandInt(){
    newInt = Math.floor(Math.random()*3);
    if (newInt == randInt){
        newRandInt();
    }else{
        randInt = newInt;
    }
}

// Script to implement questions

function loadQuestion(){

    // Call newRandInt to load a random question ID
    newRandInt();

    // Get question content as variables
    question = questions[randInt][0];
    ptsval = questions[randInt][1];
    answerA = questions[randInt][2];
    answerB = questions[randInt][3];
    answerC = questions[randInt][4];
    answerD = questions[randInt][5];

    // Load question content into site
    $('#ptsval').text(ptsval);
    $('#question').text(question);
    $('.option#optA span').text(answerA);
    $('.option#optB span').text(answerB);
    $('.option#optC span').text(answerC);
    $('.option#optD span').text(answerD);

}

// Call the question loading function once to load the first question

loadQuestion();

// Script to shuffle the answer options

$questionsWrap = $('#questions');
$('.option', $questionsWrap).sort(function(){
   return ( Math.round( Math.random() ) - 0.5 )
}).appendTo($questionsWrap);

// Script to parse user answer input

$("body").on("click", ".option", function(){
    userSelected = $(this).attr('id');
    correctAnswer = questions[randInt][6];
    if (userSelected = correctAnswer){
        alert("Correct answer!");
    }else{
        alert("Incorrect answer!");
    }
});