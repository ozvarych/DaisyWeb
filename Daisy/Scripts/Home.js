$(window).load(function () {
//    var originalAbout = $(".aboutColour").css('background-color');
//    var originalWeb = $(".webColour").css('background-color');
//    var originalPics = $(".picsColour").css('background-color');
    //    var originalContact = $(".contactColour").css('background-color');

    var original = $(".aboutColour").css('background-color');
    colourFade(".aboutColour", original);
    original = $(".webColour").css('background-color');
    colourFade(".webColour", original);
    original = $(".picsColour").css('background-color');
    colourFade(".picsColour", original);
    original = $(".contactColour").css('background-color');
    colourFade(".contactColour", original);

    $('.aboutColour').click(function () {
        window.location = "About.aspx";
    });

    $('.webColour').click(function () {
        window.location = "Web.aspx";
    });

    $('.picsColour').click(function () {
        window.location = "Pics.aspx";
    });

    $('.contactColour').click(function () {
        window.location = "Contact.aspx";
    });

});



//$('.aboutColour').hover(
//    function () {        
//        $(this).animate({ 'backgroundColor': '#fff' }, 400);
//    },
//    function () {
//        $(this).animate({ 'backgroundColor': originalAbout }, 400);
//    }
//);

//$('.webColour').hover(
//    function () {
//        $(this).animate({ 'backgroundColor': '#fff' }, 400);
//    },
//    function () {
//        $(this).animate({ 'backgroundColor': originalWeb }, 400);
//    }
//);


//$(function () {
//    
//    
//});


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
