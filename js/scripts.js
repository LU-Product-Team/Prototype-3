$("body").on("click", "header > .fa:not(.fa-arrow-left)", function(){
    $('header > .fa').toggleClass('fa-bars');
    $('header > .fa').toggleClass('fa-times');
    $('nav').toggleClass('visible');
});
$("body").on("click", "header > .fa.fa-arrow-left", function(){
    window.location.href = location.search.slice(1);
});
$('a[href]').each(function(){
    $(this).attr("href", "" + $(this).attr('href') + "?" + encodeURI(window.location.href) + "");
});

// Dashboard graph functions, animations, etc.

numOfDisplayedGames = $('.points_animation_column').length;
columnWidth = 100*(1/numOfDisplayedGames);

var minPoints = Number.MAX_VALUE, maxPoints = Number.MIN_VALUE;
$(".points_animation_column").each(function () {
    var id = parseInt(this.id, 10);
    if (id > maxPoints) {
        maxPoints = id;
    }
    if (id < minPoints) {
        minPoints = id;
    }
});

$('.points_animation_column').each(function() {
    $(this).css('width','' + columnWidth + '%');
});
setTimeout(function() {
    $('.points_animation_column').each(function() {
        thesePoints = $(this).attr('id');
        percentHeight = 100*(thesePoints/maxPoints);
        $(this).children('div:first-child').children().css('height','' + percentHeight + '%');
    });
},500);