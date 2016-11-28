/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
        jQuery(".navbar-fixed-top").addClass('is-scrolled')
    } else {
        jQuery(".navbar-fixed-top").removeClass('is-scrolled')
    }

});


(function () {
    "use strict";
    var toggles = document.querySelectorAll(".c-hamburger");

    for (var i = toggles.length - 1; i >= 0; i--) {
        var toggle = toggles[i];
        toggleHandler(toggle);
    }
    ;

    function toggleHandler(toggle) {
        toggle.addEventListener("click", function (e) {
            e.preventDefault();
            if (this.classList.contains("is-active") === true) {
                jQuery('.navbar-fixed-top').removeClass("isCollapse");
                this.classList.remove("is-active");
            } else {
                jQuery('.navbar-fixed-top').addClass("isCollapse");
                this.classList.add("is-active");
            }
//                    ? jQuery('.navbar-fixed-top').removeClass("is-scrolled")
//                    : jQuery('.navbar-fixed-top').addClass("is-active");
//            (this.classList.contains("is-active") === true) ?  : t

        });
    }



})();