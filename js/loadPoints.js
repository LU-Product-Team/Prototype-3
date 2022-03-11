function autofillPoints() {
    var points = getPoints();
    console.log("autofillPoints working");
    $(".points").each(function() {
        $(this).html(points);
    });
}

function getPoints() {
    var points;
    if(localStorage.getItem("points"))
        points = localStorage.getItem("points");
    else
        points = 0;
    return points;
}

// Add points to existing points
function addPoints(pointsToAdd) {
    var points;
    if(localStorage.getItem("points"))
        points = localStorage.getItem("points");
    else
        points = 0;
    
    points += pointsToAdd;

    localStorage.setItem("points", points);
}

// Set stored points to value. ERASES CURRENT POINTS.
function setPoints(pointValue) {
    localStorage.setItem("points", pointValue);
}