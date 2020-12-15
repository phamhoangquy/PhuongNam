$(document).ready(function() {
    swiperInit();
    toggleMobileMenu();
    mappingMenu();
});

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