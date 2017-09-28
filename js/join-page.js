/*
* custom-protocol-detection - v1.0.0
* https://github.com/ismailhabib/custom-protocol-detection
* 2017 (c) Ismail Habib Muhammad - MIT License
*/

var protocolCheck=function() {function k(a,c,b){if(a.addEventListener)return a.addEventListener(c,b),{remove:function(){a.removeEventListener(c,b)}};a.attachEvent(c,b);return{remove:function(){a.detachEvent(c,b)}}}function g(a,c){var b=document.createElement("iframe");b.src=c;b.id="hiddenIframe";b.style.display="none";a.appendChild(b);return b}function l(a,c,b){var e=setTimeout(function(){c();f.remove()},1E3),d=document.querySelector("#hiddenIframe");d||(d=g(document.body,"about:blank"));var f=k(window,"blur",function(){clearTimeout(e);f.remove();b()});d.contentWindow.location.href=a}function m(a,c,b){for(var e=setTimeout(function(){c();f.remove()},1E3),d=window;d!=d.parent;)d=d.parent;var f=k(d,"blur",function(){clearTimeout(e);f.remove();b()});window.location=a}function n(a,c,b){var e=document.querySelector("#hiddenIframe");e||(e=g(document.body,"about:blank"));try{e.contentWindow.location.href=a,b()}catch(d){"NS_ERROR_UNKNOWN_PROTOCOL"==d.name&&c()}}function p(a,c,b){10===h()?q(a,c,b):9===h()||11===h()?l(a,c,b):r(a,c,b)}function q(a,c,b){var e=setTimeout(c,1E3);window.addEventListener("blur",function(){clearTimeout(e);b()});var d=document.querySelector("#hiddenIframe");d||(d=g(document.body,"about:blank"));try{d.contentWindow.location.href=a}catch(f){c(),clearTimeout(e)}}function r(a,c,b){var e=window.open("","","width=0,height=0");e.document.write("<iframe src='"+a+"'></iframe>");setTimeout(function(){try{e.location.href,e.setTimeout("window.close()",1E3),b()}catch(d){e.close(),c()}},1E3)}function t(){var a=!!window.opera||0<=navigator.userAgent.indexOf(" OPR/");return{isOpera:a,isFirefox:"undefined"!==typeof InstallTrigger,isSafari:0<Object.prototype.toString.call(window.HTMLElement).indexOf("Constructor"),isChrome:!!window.chrome&&!a,isIE:!!document.documentMode}}function h(){var a=-1;if("Microsoft Internet Explorer"===navigator.appName){var c=navigator.userAgent;var b=/MSIE ([0-9]{1,}[.0-9]{0,})/;null!=b.exec(c)&&(a=parseFloat(RegExp.$1))}else"Netscape"===navigator.appName&&(c=navigator.userAgent,b=/Trident\/.*rv:([0-9]{1,}[.0-9]{0,})/,null!=b.exec(c)&&(a=parseFloat(RegExp.$1)));return a}return function(a,c,b){function e(){c&&c()}function d(){b&&b()}if(navigator.msLaunchUri)navigator.msLaunchUri(a,b,c);else{var f=t();f.isFirefox?n(a,e,d):f.isChrome?m(a,e,d):f.isIE&&p(a,e,d)}}}();

(function(undefined) {
  var doc = document;
  var cascadeWorkspaceId = window.location.href.split(/\?|\&/)[1];
  var redirectAnywaysLink = doc.querySelector('#js-cascade-redirect-anyways');

  var cascadeJoinBlocks = doc.querySelector('#js-cascade-join-blocks');
  var cascadeOwnerOfflineBlock = doc.querySelector('#js-cascade-owner-offline-redirect-block');
  var cascadeOpenCascadeBlock = doc.querySelector('#js-cascade-open-cascade-block');
  var cascadeInstallCascadeBlock = doc.querySelector('#js-cascade-install-cascade-block');

  redirectAnywaysLink.setAttribute('href', 'cascade:?action=join&workspaceId=' + cascadeWorkspaceId);

  var setState = function setState(state) {
      var className = '';

      switch (state) {
          case 'ok':
              className = 'is-open-cascade';
              break;
          case 'install':
              className = 'is-install-cascade';
              break;
          case 'offline':
              className = 'is-owner-offline';
              break;
      }

      cascadeJoinBlocks.setAttribute('class', 'cascade-join-blocks ' + className);
  }
  
  var poolOwnerStatus = function poolOwnerStatus(cascadeWorkspaceId, connectedCallback, disconnectedCallback) {
      var getStatus = function getStatus() {
          fetch('http://localhost:3000/api/v0/workspace/' + cascadeWorkspaceId + '/status/', { mode: 'cors' })
              .then(function (result) {
                  result = result.json();
                  return (result.isOwnerConnected) ? connectedCallback() : disconnectedCallback();
              })
              .catch(function (e) {
                  connectedCallback();
                  console.error(e);
              });
      }

      setInterval(getStatus, 1000);
      getStatus();
  };

  function check(setState) {
      var workspaceId = location.search.substring(1);

      protocolCheck(
          'cascade:?action=join&workspaceId=' + cascadeWorkspaceId,
          function doesNotImplementProtocol() {
              setState('install');
          },
          function doesImplementProtocol() {
              setState('ok');
          });
  }

  var isConnected = null;
  poolOwnerStatus(cascadeWorkspaceId,
      function connected() {
          if (isConnected === true) { return; }
          isConnected = true;
          check(setState);
      }, function disconnected() {
          if (isConnected === false) { return; }
          isConnected = false;
          setState('offline');
      }
  );
})();