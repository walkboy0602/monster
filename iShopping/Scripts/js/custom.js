function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

function isDecimal(e) {
    if (e.charCode == 46 || e.charCode == 44) {
        var currentContents = $input.val();
        return !(currentContents.indexOf(',') !== -1 || currentContents.indexOf('.') !== -1);
    }
    return (e.charCode >= 48 && e.charCode <= 57) || e.charCode === 0;
}

/* Bootstrap Carousel */

$('.carousel').carousel({
    interval: 8000,
    pause: "hover"
});

/* Ecommerce single item carousel */

$('.ecarousel').carousel({
    interval: 8000,
    pause: "hover"
});

/* Navigation Menu */

ddlevelsmenu.setup("ddtopmenubar", "topbar");

/* Dropdown Select */

/* Navigation (Select box) */

// Create the dropdown base

$("<select />").appendTo(".navis");

// Create default option "Go to..."

$("<option />", {
    "selected": "selected",
    "value": "",
    "text": "Menu"
}).appendTo(".navis select");

// Populate dropdown with menu items

$(".navi a").each(function () {
    var el = $(this);
    $("<option />", {
        "value": el.attr("href"),
        "text": el.text()
    }).appendTo(".navis select");
});

$(".navis select").change(function () {
    window.location = $(this).find("option:selected").val();
});


/* Recent post carousel (CarouFredSel) */

/* Carousel */

$('#carousel_container').carouFredSel({
    responsive: true,
    width: '100%',
    direction: 'left',
    scroll: {
        items: 4,
        delay: 2000,
        duration: 500,
        pauseOnHover: "true"
    },
    prev: {
        button: "#car_prev",
        key: "left"
    },
    next: {
        button: "#car_next",
        key: "right"
    },
    items: {
        visible: {
            min: 1,
            max: 4
        }
    }
});


// Carousel for Detail Page - Item

///* Attached an unique class name to each thumbnail image */
$('#thumbs .thumb a').each(function (i) {
    $(this).addClass('itm' + i);

    /* add onclick event to thumbnail to make the main 
    carousel scroll to the right slide*/
    $(this).click(function () {
        $('#carousel-item').trigger('slideTo', [i, 0, true]);
        return false;
    });
});

/* Highlight the first item on first load */
$('#thumbs a.itm0').addClass('selected');

$('#carousel-item').carouFredSel({
    width: '100%',
    items: 1,
    direction: "left",
    circular: true,
    auto: false,
    infinite: false,
    align: "center",
    scroll: {
        fx: 'directscroll',
        pauseOnHover: true,
        onBefore: function () {
            /* Everytime the main slideshow changes, it check to 
                make sure thumbnail and page are displayed correctly */
            /* Get the current position */
            var pos = $(this).triggerHandler('currentPosition');

            /* Reset and select the current thumbnail item */
            $('#thumbs a').removeClass('selected');
            $('#thumbs a.itm' + pos).addClass('selected');

            /* Move the thumbnail to the right page */
            var page = Math.floor(pos / 4);
            $('#thumbs').trigger('slideToPage', page);
        }
    },
    prev: '#prev',
    next: '#next'
});

/* Carousel for the thumbnails */
$('#thumbs').carouFredSel({
    direction: 'left',
    circular: true,
    infinite: false,
    items: {
        visible: 4
    },
    align: false,
    auto: false
});

/* Scroll to Top */


$(".totop").hide();

$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.totop').slideDown();
        }
        else {
            $('.totop').slideUp();
        }
    });

    $('.totop a').click(function (e) {
        e.preventDefault();
        $('body,html').animate({ scrollTop: 0 }, 500);
    });

});


/* Support */

$("#slist a").click(function (e) {
    e.preventDefault();
    $(this).next('p').toggle(200);
});

/* Careers */

$('#myTab a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
})


/* Ecommerce sidebar */

$(document).ready(function () {
    $('.sidey .nav').navgoco();
    $('[data-toggle="tooltip"]').tooltip();
    /* Floating Bar */
    //$sidebar = $(".seller");
    //$window = $(window);
    //var sidebarOffset = $sidebar.offset();

    //$window.scroll(function () {
    //    if ($window.scrollTop() > sidebarOffset.top) {
    //        $sidebar.stop().animate({
    //            marginTop: $window.scrollTop() - sidebarOffset.top
    //        });
    //    } else {
    //        $sidebar.stop().animate({
    //            marginTop: 0
    //        });
    //    }
    //});
});
