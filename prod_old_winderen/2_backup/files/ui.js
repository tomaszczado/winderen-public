var hiddenClass = 'hidden';
var activeClass = 'active';
var showClass = 'show';
var fixedTopClass = 'fixed-top';
var expandedClass = 'expanded';

var MobileMenu = function (documentBody, menuElement, menuOverlayElement, navbarButton, navbarButtonIcon) {
    var noScrollClass = 'no-scroll';
    var hamburgerIcon = 'fa-bars';
    var closeIcon = 'fa-times';

    var show = function () {
        menuElement.removeClass(hiddenClass);
        menuOverlayElement.removeClass(hiddenClass);
        navbarButtonIcon.removeClass(hamburgerIcon);
        navbarButtonIcon.addClass(closeIcon);
        documentBody.addClass(noScrollClass);
    };

    var hide = function () {
        menuElement.addClass(hiddenClass);
        documentBody.removeClass(noScrollClass);
        navbarButtonIcon.removeClass(closeIcon);
        menuOverlayElement.addClass(hiddenClass);
        navbarButtonIcon.addClass(hamburgerIcon);
    };

    return {
        show: show,
        hide: hide
    };
};

var onScrollStop = function (callback) {

    if (!callback || typeof callback !== 'function') {
        return;
    }

    var isScrolling;

    window.addEventListener('wheel', function (event) {
        window.clearTimeout(isScrolling);
        isScrolling = setTimeout(function () {
            callback();
        }, 66);
    }, false);

};

$(document).ready(function () {
    var documentBody = $('body');
    var navbarBottomSpacer = $('.navbar-bottom-spacer');
    var menuElement = $('.menu-container');
    var menuOverlayElement = $('.menu-overlay');
    var menuButton = $('.navbar-menu-button');
    var menuButtonIcon = $('#navbar-menu-icon');
    var menu = MobileMenu(documentBody, menuElement, menuOverlayElement, menuButton, menuButtonIcon);

    var navbarMenu = $('.navbar-menu');
    var navbarMenuOption = $('.navbar-menu-option');
    var navbarSubmenuOption = $('.navbar-submenu-option');
    var menuAccordionItem = $('.menu-accordion-item');
    var faqAccordionItem = $('.faq-accordion-item');
    var cartAccordionItem = $('.cart-accordion-item');
    var langItem = $('.lang-item');

    navbarMenuOption.click(function (e) {

        var submenu_count = $(this).find("ul li").length;
        if (submenu_count == 0) {
            var submenu_href = $(this).find("a").attr('href');
            window.location.href = submenu_href;
        }

        e.preventDefault();
        if ($(this).hasClass(activeClass)) {
            navbarMenuOption.removeClass(activeClass);
            navbarMenu.removeClass(expandedClass);
            navbarBottomSpacer.removeClass(expandedClass);
        } else {
            navbarMenuOption.removeClass(activeClass);
            $(this).addClass(activeClass);
            navbarMenu.addClass(expandedClass);
            navbarBottomSpacer.addClass(expandedClass);
        }
    });

    var regex = /[\/]([a-z][a-z][\/])?(shop_offer|shop_item)/gm;
    var path = window.location.pathname;

    menuAccordionItem.click(function (e) {

        var submenu_count = $(this).find("div i").length;
        //alert(submenu_count);
        if (submenu_count == 0) {
            var submenu_href = $(this).find("a").attr('href');
            if (submenu_href!='undefined') {
                window.location.href = submenu_href;
            }
        } else {
            if ($(this).hasClass(activeClass)) {
                $(this).removeClass(activeClass);
            } else {
                $(this).addClass(activeClass);
            }
            return false;
        }
    });

    faqAccordionItem.click(function (e) {
        if ($(this).hasClass(activeClass)) {
            $(this).removeClass(activeClass);
        } else {
            $(this).addClass(activeClass);
        }
    });

    cartAccordionItem.click(function (e) {
        if ($(this).hasClass(activeClass)) {
            $(this).removeClass(activeClass);
        } else {
            $(this).addClass(activeClass);
        }
    });

    langItem.click(function (e) {
        if ($(this).hasClass(activeClass)) {
            $(this).removeClass(activeClass);
        } else {
            $(this).addClass(activeClass);
        }
    });

    navbarSubmenuOption.click(function (e) {
        e.stopPropagation();
    });

    menuOverlayElement.click(function (e) {
        e.preventDefault();
        menu.hide();
    });

    menuButton.click(function (e) {
        e.preventDefault();
        if (menuElement.hasClass(hiddenClass)) {
            menu.show();
        } else {
            menu.hide();
        }
    });

    $(window).bind('click touchstart', function (e) {
        var parents = $(e.target).parents('.dropdown.show');
        if (parents.length === 0) {
            $('.dropdown').removeClass(showClass);
        }
    });

    $('.dropdown-button').click(function (e) {
        e.preventDefault();
        $(this).parent().toggleClass(showClass);
    });
});
