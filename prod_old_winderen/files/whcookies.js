/*
 * Skrypt wyświetlający okienko z informacją o wykorzystaniu ciasteczek (cookies)
 *
 * Więcej informacji: http://webhelp.pl/artykuly/okienko-z-informacja-o-ciasteczkach-cookies/
 *
 */

function WHCreateCookie(name, value, days) {
    var date = new Date();
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
    var expires = "; expires=" + date.toGMTString();
    document.cookie = name + "=" + value + expires + "; path=/";
}

function WHReadCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

window.onload = WHCheckCookies;

function WHCheckCookies() {
    if (WHReadCookie('cookies_accepted') != 'T') {
        var cookiecontent = $('.cookie-content').html()
        var cookiecontentok = $('.cookie-content-ok').text()
        var message_container = document.createElement('div');
        message_container.id = 'cookies-message-container';
        if (cookiecontent!='') {
            var html_code = '<div id="cookies-message" style="padding: 1rem; font-size: 12px; line-height: 18px; text-align: center; position: fixed; bottom: 0px; background-color: rgba(0, 0, 0, 0.9); width: 100%; z-index: 999;">'+cookiecontent+'<a href="javascript:WHCloseCookiesWindow();" id="accept-cookies-checkbox" name="accept-cookies" style="font-size:120%; background-color: #117DB4; padding: 6px 12px; color: #FFF; border-radius: 4px; -moz-border-radius: 4px; -webkit-border-radius: 4px; display: inline-block; margin-left: 10px; text-decoration: none; cursor: pointer;">'+cookiecontentok+'</a></div>';
        } else {
            var html_code = '<div id="cookies-message" style="padding: 10px 0px; font-size: 14px; line-height: 22px; text-align: center; position: fixed; bottom: 0px; background-color: rgba(0, 0, 0, 0.7); width: 100%; z-index: 999;">This web site uses two different types of cookies. Persistent cookies, which are text files sent by our web server and stored on your computer, and session cookies which are only stored temporarily and disappear when you close your web browser.<a href="javascript:WHCloseCookiesWindow();" id="accept-cookies-checkbox" name="accept-cookies" style="background-color: #444; padding: 5px 10px; color: #FFF; border-radius: 4px; -moz-border-radius: 4px; -webkit-border-radius: 4px; display: inline-block; margin-left: 10px; text-decoration: none; cursor: pointer;">OK</a></div>';
        }
        message_container.innerHTML = html_code;
        document.body.appendChild(message_container);
    }
}

function WHCloseCookiesWindow() {
    WHCreateCookie('cookies_accepted', 'T', 365);
    document.getElementById('cookies-message-container').removeChild(document.getElementById('cookies-message'));
}