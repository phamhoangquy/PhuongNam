$(document).ready(function() {
    swiperInit();
    toggleMobileMenu();
    mappingMenu();
    projectDetailSlide();
    about4();
    fancyboxModal();
    toggleApplyForm();
    InsertBd();
    showBackToTop();
});

const InsertBd = () => {
    $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
};

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

window.onscroll = function() {
    scrollFunction()
};

function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        document.querySelector("header").style.top = "-50px"
        document.querySelector(".header_logo a img").style.paddingTop = "40px";
        document.querySelector(".header_logo a img").style.width = "85%";
        document.querySelector(".header_logo a img").style.height = "85%";
    } else {
        document.querySelector("header").style.top = "0";
        document.querySelector(".header_logo a img").style.paddingTop = "0";
        document.querySelector(".header_logo a img").style.width = "100%";
        document.querySelector(".header_logo a img").style.height = "100%";
    }
}

function fancyboxModal() {
    $(".button-apply a").click(function(e) {
        e.preventDefault();
        $.fancybox.open({
            src: '#form-apply',
            type: 'inline',
            opts: {
                afterShow: function(instance, current) {
                    $(".fancybox-is-open").appendTo("main");
                }
            }
        });
        return false;
    });
}

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