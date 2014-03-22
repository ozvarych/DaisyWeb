$(document).ready(function () {


});


$(function () {
    var original = $(".aboutColour").css('background-color');
    colourFade(".aboutColour", original);
    var original = $(".webColour").css('background-color');
    colourFade(".webColour", original);
    var original = $(".picsColour").css('background-color');
    colourFade(".picsColour", original);
    var original = $(".contactColour").css('background-color');
    colourFade(".contactColour", original);
    
});


function colourFade(obj, original) 
{
    $(obj).hover(
        function () {
            $(this).animate({ 'backgroundColor': '#fff' }, 400);
        },
        function () {
            $(this).animate({ 'backgroundColor': original }, 400);
        }
    );
}
