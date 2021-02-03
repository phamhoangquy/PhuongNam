$(document).ready(function() {
    swiperInit();
    toggleMobileMenu();
    mappingMenu();
    projectDetailSlide();
    about4();
    toggleApplyForm();
    InsertBd();
    InsertBdTitle();
    formInner();
    coutingNumber();
    Showmap();
    linkAbout();
    scrollToDiv();
    filterCate();
    appendRecruit();
    trigerMap();
    showBackToTop();

});

function trigerMap() {
    var path = window.location.href;
    let Ketqua = "#" + path.substr(path.indexOf("#") + 1);
    var contact = $(".contact").offset().top - 110;
    $("html,body").animate({ scrollTop: contact });
    $(Ketqua).trigger("click");
    $(".footer-copyright .item-office a").on("click", function() {
        var contact = $(".contact").offset().top - 110;
        $("html,body").animate({ scrollTop: contact });
        var link = "#" + $(this).attr("id");
        $(link).trigger("click");
    });
}

function height(el) {
    var height = 0;
    $(el).each(function() {
        var thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
        setTimeout(() => {
            $(el).height(height)
        }, 100)
    })
}


let header = {
    headerScroll: () => {
        let heightHeader = $('header').outerHeight();
        $(window).scrollTop() > 0 ? $('header').addClass('header-scroll') : $('header').removeClass('header-scroll');
    }
}

const InsertBd = () => {
    $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
};

const InsertBdTitle = () => {
    $(".title-line").insertBefore(".breadcrumb-wrapper");
};

function filterCate() {
    $('.tool-product').prependTo('.product-list__pages main .product-list .container');
    var cate_menu = $('.item-product-left')
    var filter_menu = $('.item-product-color')
    var tool = $('.tool-product')
    var cate = $('.tool-product .btn-cate')
    var filter = $('.tool-product .btn-filter')
    var close = $('#cls_filter')
    var close_2 = $('#cls_filter-2')
    setTimeout(() => {
        var header = $("header").outerHeight();
        cate_menu.css("top", header);
        filter_menu.css("top", header);
    }, 100);
    cate.on('click', function() {
        cate_menu.toggleClass('active')
        filter_menu.removeClass('active')
    });
    filter.on('click', function() {
        filter_menu.toggleClass('active')
        cate_menu.removeClass('active')
    });
    close.on('click', function() {
        cate_menu.removeClass('active')
    });
    close_2.on('click', function() {
        filter_menu.removeClass('active')
    });
}

function Showmap() {
    $(".branch-one ul li").click(function() {
        $(this).addClass("active");
        var datahref = $(this).attr("data-href");
        $(".map-wrapper")
            .find("iframe")
            .attr("src", function() {
                return datahref;
            });
        $(".branch-one ul li").not(this).removeClass("active");
    });
}

function appendRecruit() {
    $('#infor-box').appendTo('.recruitment-detail #infor-inner')
}

function formInner() {
    $('#ctl00_altContent1_ctl03_pnlForm').appendTo('.product-detail-2 #form-inner')
}

function toggleMobileMenu() {
    $('.header_btn').click(function() {
        $(this).toggleClass("click");
        $('.menu_mobile').toggleClass("show");
        $('.overlay').toggleClass("show");
    });
    $('.overlay').click(function() {
        $(this).toggleClass("click");
        $('.menu_mobile').toggleClass("show");
        $('.overlay').toggleClass("show");
    });
    $('.search-icon').click(function() {
        $(this).toggleClass("click");
        $('.block_search').toggleClass("show");
    });
}

function linkAbout() {
    $(".link-to-about-section a").on("click", function(event) {
        if (this.hash !== "") {
            let offset = $("header").outerHeight() + 50;
            var hash = this.hash;
            $(this).parent().addClass('active').siblings().removeClass("active")
            $("html, body").animate({
                    scrollTop: $(hash).offset().top - offset,
                },
                800,
                function() {
                    window.location.hash = hash;
                }
            );
        } // End if
    });
}

const scrollToDiv = () => {
    $(".banner-scroll").click(function() {
        let sumHed =
            $(".home-banner").outerHeight() - $("header").outerHeight();
        console.log(sumHed);
        $("html,body").animate({
                scrollTop: sumHed,
            },
            "fast"
        );
    });
};

function mappingMenu() {
    return new MappingListener({
        selector: ".nav-menu",
        mobileWrapper: ".mobile-wrapper",
        mobileMethod: "appendTo",
        desktopWrapper: ".header_menu",
        desktopMethod: "prependTo",
        breakpoint: 1281
    }).watch();
}

// Slide project-detail
function projectDetailSlide() {
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 20,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            576: {
                slidesPerView: 2,
            },
            1000: {
                slidesPerView: 2,
            }
        }
    });
    var galleryTop = new Swiper('.gallery-top', {
        thumbs: {
            swiper: galleryThumbs
        },
        navigation: {
            nextEl: '.nav-arrow-next',
            prevEl: '.nav-arrow-prev',
        },
    });
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
    });

    var brandSwiper = new Swiper(".home_s-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.home_s-5 .nav-arrow-next',
            prevEl: '.home_s-5 .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 6,
            },
        },

    });

    var brandSwiper = new Swiper(".home_s-7 .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.home_s-7 .nav-arrow-next',
            prevEl: '.home_s-7 .nav-arrow-prev',
        },
        spaceBetween: 80,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },

    });

    var brandSwiper = new Swiper(".client-brand .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.client-brand .nav-arrow-next',
            prevEl: '.client-brand .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 6,
            },
        },

    });

    var brandSwiper = new Swiper(".service-detail .slide-srv-detail", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 5,
        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".service-detail .nav-arrow-next",
            prevEl: ".service-detail .nav-arrow-prev",
        },
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 2,
            },
            1440: {
                slidesPerView: 2,
            },
            1600: {
                slidesPerView: 2,
            },
        },
    });

    var brandSwiper = new Swiper(".product-detail-3 .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.product-detail-3 .nav-arrow-next',
            prevEl: '.product-detail-3 .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },
        },

    });

    var brandSwiper = new Swiper(".about-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.about-5 .nav-arrow-next',
            prevEl: '.about-5 .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },

    });

    var brandSwiper = new Swiper(".about-6 .slide-prize", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.about-6 .nav-arrow-next',
            prevEl: '.about-6 .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 2,
            },
            1440: {
                slidesPerView: 2,
            },
            1600: {
                slidesPerView: 2,
            },
            1920: {
                slidesPerView: 2,
            },
        },
    });

    var brandSwiper = new Swiper(".about-7 .swiper-container", {
        // Optional parameters
        speed: 1000,
        // autoplay: {
        //     delay: 2000
        // },
        navigation: {
            nextEl: '.about-7 .nav-arrow-next',
            prevEl: '.about-7 .nav-arrow-prev',
        },
        spaceBetween: 30,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 6,
            },
        },

    });

}

function about4() {
    var mySwiper = new Swiper(".about-4 .factory-slide", {
        spaceBetween: 15,
        centeredSlides: true,
        roundLengths: true,
        loop: true,
        slideToClickedSlide: true,
        loopAdditionalSlides: 30,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 1,
            },
            1025: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },
            1920: {
                slidesPerView: 3,
            },
        },
        navigation: {
            nextEl: '.about-4 .nav-arrow-next',
            prevEl: '.about-4 .nav-arrow-prev',
        },
    });
}

function coutingNumber() {
    $('.counter').each(function() {
        var $this = $(this),
            countTo = $this.attr('data-count');
        $({ countNum: $this.text() }).animate({
            countNum: countTo
        }, {
            duration: 5000,
            easing: 'linear',
            step: function() {
                $this.text(Math.floor(this.countNum));
            },
            complete: function() {
                $this.text(this.countNum);
                //alert('finished');
            }
        });
    });
}

// function fancyboxModal() {
//     $(".button-apply a").click(function(e) {
//         e.preventDefault();
//         $.fancybox.open({
//             src: '#form-apply',
//             type: 'inline',
//             opts: {
//                 afterShow: function(instance, current) {
//                     $(".fancybox-is-open").appendTo("main");
//                 }
//             }
//         });
//         return false;
//     });
// }

function toggleApplyForm() {
    $(".apply-form .button-apply a").on("click", function() {
        $(".form-apply").slideToggle();
    });
}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
}

window.onscroll = function() {
    header.headerScroll()
};