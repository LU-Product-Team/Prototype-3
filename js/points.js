$(document).ready(function () {
    // Sometimes this function runs before the footer loads, leaving the footer blank
    // I don't have the time or motivation to figure it out, so this dealys it by 100ms.
    setTimeout(function(){ autofillPoints(); }, 100);
});

// Automatically fill in point value to any element with class "points"
function autofillPoints() {
    var points = getPoints();
    console.log("Auto-filling points from localStorage...");
    $(".points").each(function() {
        $(this).html(points);
    });
}

// Returns the user's current points
function getPoints() {
    var points;
    if(localStorage.getItem("points"))
        points = +localStorage.getItem("points");
    else
        points = 0;
    return points;
}

// Add points to user's points
function addPoints(pointsToAdd) {
    var points;
    if(localStorage.getItem("points"))
        points = +localStorage.getItem("points");
    else
        points = 0;
    
    points += pointsToAdd;

    localStorage.setItem("points", points);

    // Update page with new point value
    autofillPoints();
}

// Set stored points to value. ERASES CURRENT POINTS.
function setPoints(pointValue) {
    localStorage.setItem("points", pointValue);

    // Update page with new point value
    autofillPoints();
}