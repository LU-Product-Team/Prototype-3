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