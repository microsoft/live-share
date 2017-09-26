"use strict";

(function(undefined) {
  function setCookie(name, value, options) {
    options = options || {};
    var expires = options.expires;
    if (typeof expires == "number" && expires) {
      var d = new Date();
      d.setTime(d.getTime() + expires * 1000);
      expires = options.expires = d;
    }
    if (expires && expires.toUTCString) {
      options.expires = expires.toUTCString();
    }
    value = encodeURIComponent(value);
    var updatedCookie = name + "=" + value;
    for (var propName in options) {
      updatedCookie += "; " + propName;
      var propValue = options[propName];
      if (propValue !== true) {
        updatedCookie += "=" + propValue;
      }
    }
    document.cookie = updatedCookie;
  }
  var getTopDomain = function(hostname) {
    var hostnameSplit = hostname.split('.');
    var len = hostnameSplit.length;
    return ('.' + hostnameSplit[len - 2] + '.' + hostnameSplit[len - 1]);
  };
  var buttons = document.querySelectorAll(".js-request-button");
  var onOAuthClick = function onOAuthClick(e) {
    setCookie("cascade-auth-start-redirection", location.host, {
      expires: 120,
      domain: getTopDomain(location.hostname)
    });
  };
  buttons[0].addEventListener("click", onOAuthClick);
  buttons[1].addEventListener("click", onOAuthClick);
})();

"use strict";

(function() {
    function getTokenFromCookie() {
        var tokenHeader = 'auth-token';
        var matches = document.cookie.match('(^|;)\\s*' + tokenHeader + '\\s*=\\s*([^;]+)');
        return matches ? matches.pop() : false;
    }

    function init() {
        var token = getTokenFromCookie();

        if (!token) {
            return;
        }

        // TODO: fetch user from token
        document.body.setAttribute('data-authorized', true);
    }

    init();
})();