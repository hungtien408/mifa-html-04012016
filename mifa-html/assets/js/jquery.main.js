function pageLoad() {
}
(function ($) {
    $(window).load(function () {
    });
    $(function () {
        myfunload();
        mypageload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $('#banner').bxSlider({
        mode: 'fade',
        pager: false,
        controls: false,
        auto: true
    });
    if ($('#sliderProduct').size() == 1) {
        var nums = $('#sliderProduct .slide').size();
        var nummax = $('#sliderProduct').attr("data-num");
        var numv = nummax;
        if (nums < nummax) {
            numv = nums;
        }
        $('#sliderProduct').bxSlider({
            mode: 'vertical',
            minSlides: numv,
            slideMargin: 25,
            pager: false,
            controls: false,
            auto: true
        });
    }
    if ($(".reflect").size() > 0) {
        $(".reflect").reflect();
    }
    $(".fullbox-img").bgsizebox({
        fimg: true,
        imgcss: "hideo",
        attrname: "data-src"
    });
}
/*=========================================================================*/
function mypageload() {
    $(".select").uniform();
    $('#mainContent').imagesLoaded(function () {
        myListTb();
    });
}
/*========================================================================*/
function myListTb() {
    if ($('#isotopelist').size() == 1) {
        $('#isotopelist').isotope({
            itemSelector: '.element-item',
            layoutMode: 'fitRows'
        });
    }
    if ($('.product-tb').size() > 0) {
        $('.product-tb').textHeight({
            activetit: true,
            listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
            wpointb: true,
            //widthpont: 479,
            desbool: true,
            listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            tbrow: true,
            csstr: ".element-item",
            max: true
        }).isotope({
            itemSelector: '.element-item',
            layoutMode: 'fitRows'
        });
    }
}