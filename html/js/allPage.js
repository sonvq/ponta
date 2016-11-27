/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
        jQuery(".navbar-fixed-top").addClass('navbarBoder')
    } else {
        jQuery(".navbar-fixed-top").removeClass('navbarBoder')
    }
});
