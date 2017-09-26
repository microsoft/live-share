"use strict";

function copyTextToClipboard(text) {
    // setup text area
    var textArea = document.createElement('textarea');
    textArea.className = 'code__textarea';
    textArea.value = text;

    document.body.appendChild(textArea);

    textArea.select();

    var result = false;
    try {
        result = document.execCommand('copy');
    }
    catch (e) {
    }

    document.body.removeChild(textArea);

    return result;
}

function wrap(el, wrapper) {
    el.parentNode.insertBefore(wrapper, el);
    wrapper.appendChild(el);
}

function setupCopyElements() {
    var result = document.getElementsByTagName('pre');
    for (var i = 0; i < result.length; i++) {
        // create new elements
        var copyNode = document.createElement('div');
        copyNode.textContent = 'copy';
        copyNode.className = 'code__copy';

        var wrapperNode = document.createElement('div');
        wrapperNode.className = 'code__wrapper';

        var node = result[i];

        // manipulate dom
        wrap(node, wrapperNode);
        wrapperNode.appendChild(copyNode);

        // event handler
        copyNode.addEventListener('click', (function(text, copyNode) {
            return function() {
                var result = copyTextToClipboard(text);
                if (result) {
                    copyNode.textContent = 'copied!';
                    setTimeout(function() {
                        copyNode.textContent = 'copy';
                    }, 1000)
                }
            };
        })(node.innerText, copyNode))
    }
}

if (document.execCommand) {
    setupCopyElements();
}


"use strict";

/*!
 * headroom.js v0.9.3 - Give your page some headroom. Hide your header until you need it
 * Copyright (c) 2016 Nick Williams - http://wicky.nillia.ms/headroom.js
 * License: MIT
 */

!function(a,b){"use strict";"function"==typeof define&&define.amd?define([],b):"object"==typeof exports?module.exports=b():a.Headroom=b()}(this,function(){"use strict";function a(a){this.callback=a,this.ticking=!1}function b(a){return a&&"undefined"!=typeof window&&(a===window||a.nodeType)}function c(a){if(arguments.length<=0)throw new Error("Missing arguments in extend function");var d,e,f=a||{};for(e=1;e<arguments.length;e++){var g=arguments[e]||{};for(d in g)"object"!=typeof f[d]||b(f[d])?f[d]=f[d]||g[d]:f[d]=c(f[d],g[d])}return f}function d(a){return a===Object(a)?a:{down:a,up:a}}function e(a,b){b=c(b,e.options),this.lastKnownScrollY=0,this.elem=a,this.tolerance=d(b.tolerance),this.classes=b.classes,this.offset=b.offset,this.scroller=b.scroller,this.initialised=!1,this.onPin=b.onPin,this.onUnpin=b.onUnpin,this.onTop=b.onTop,this.onNotTop=b.onNotTop,this.onBottom=b.onBottom,this.onNotBottom=b.onNotBottom}var f={bind:!!function(){}.bind,classList:"classList"in document.documentElement,rAF:!!(window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame)};return window.requestAnimationFrame=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame,a.prototype={constructor:a,update:function(){this.callback&&this.callback(),this.ticking=!1},requestTick:function(){this.ticking||(requestAnimationFrame(this.rafCallback||(this.rafCallback=this.update.bind(this))),this.ticking=!0)},handleEvent:function(){this.requestTick()}},e.prototype={constructor:e,init:function(){return e.cutsTheMustard?(this.debouncer=new a(this.update.bind(this)),this.elem.classList.add(this.classes.initial),setTimeout(this.attachEvent.bind(this),100),this):void 0},destroy:function(){var a=this.classes;this.initialised=!1,this.elem.classList.remove(a.unpinned,a.pinned,a.top,a.notTop,a.initial),this.scroller.removeEventListener("scroll",this.debouncer,!1)},attachEvent:function(){this.initialised||(this.lastKnownScrollY=this.getScrollY(),this.initialised=!0,this.scroller.addEventListener("scroll",this.debouncer,!1),this.debouncer.handleEvent())},unpin:function(){var a=this.elem.classList,b=this.classes;!a.contains(b.pinned)&&a.contains(b.unpinned)||(a.add(b.unpinned),a.remove(b.pinned),this.onUnpin&&this.onUnpin.call(this))},pin:function(){var a=this.elem.classList,b=this.classes;a.contains(b.unpinned)&&(a.remove(b.unpinned),a.add(b.pinned),this.onPin&&this.onPin.call(this))},top:function(){var a=this.elem.classList,b=this.classes;a.contains(b.top)||(a.add(b.top),a.remove(b.notTop),this.onTop&&this.onTop.call(this))},notTop:function(){var a=this.elem.classList,b=this.classes;a.contains(b.notTop)||(a.add(b.notTop),a.remove(b.top),this.onNotTop&&this.onNotTop.call(this))},bottom:function(){var a=this.elem.classList,b=this.classes;a.contains(b.bottom)||(a.add(b.bottom),a.remove(b.notBottom),this.onBottom&&this.onBottom.call(this))},notBottom:function(){var a=this.elem.classList,b=this.classes;a.contains(b.notBottom)||(a.add(b.notBottom),a.remove(b.bottom),this.onNotBottom&&this.onNotBottom.call(this))},getScrollY:function(){return void 0!==this.scroller.pageYOffset?this.scroller.pageYOffset:void 0!==this.scroller.scrollTop?this.scroller.scrollTop:(document.documentElement||document.body.parentNode||document.body).scrollTop},getViewportHeight:function(){return window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight},getElementPhysicalHeight:function(a){return Math.max(a.offsetHeight,a.clientHeight)},getScrollerPhysicalHeight:function(){return this.scroller===window||this.scroller===document.body?this.getViewportHeight():this.getElementPhysicalHeight(this.scroller)},getDocumentHeight:function(){var a=document.body,b=document.documentElement;return Math.max(a.scrollHeight,b.scrollHeight,a.offsetHeight,b.offsetHeight,a.clientHeight,b.clientHeight)},getElementHeight:function(a){return Math.max(a.scrollHeight,a.offsetHeight,a.clientHeight)},getScrollerHeight:function(){return this.scroller===window||this.scroller===document.body?this.getDocumentHeight():this.getElementHeight(this.scroller)},isOutOfBounds:function(a){var b=0>a,c=a+this.getScrollerPhysicalHeight()>this.getScrollerHeight();return b||c},toleranceExceeded:function(a,b){return Math.abs(a-this.lastKnownScrollY)>=this.tolerance[b]},shouldUnpin:function(a,b){var c=a>this.lastKnownScrollY,d=a>=this.offset;return c&&d&&b},shouldPin:function(a,b){var c=a<this.lastKnownScrollY,d=a<=this.offset;return c&&b||d},update:function(){var a=this.getScrollY(),b=a>this.lastKnownScrollY?"down":"up",c=this.toleranceExceeded(a,b);this.isOutOfBounds(a)||(a<=this.offset?this.top():this.notTop(),a+this.getViewportHeight()>=this.getScrollerHeight()?this.bottom():this.notBottom(),this.shouldUnpin(a,c)?this.unpin():this.shouldPin(a,c)&&this.pin(),this.lastKnownScrollY=a)}},e.options={tolerance:{up:0,down:0},offset:0,scroller:window,classes:{pinned:"headroom--pinned",unpinned:"headroom--unpinned",top:"headroom--top",notTop:"headroom--not-top",bottom:"headroom--bottom",notBottom:"headroom--not-bottom",initial:"headroom"}},e.cutsTheMustard="undefined"!=typeof f&&f.rAF&&f.bind&&f.classList,e});

(function () {
    /**
     * navigation menu toggle
     */
    var headerButton = document.querySelector('#js-glimpse-navbar-toggle');
    var headerCollapse = document.querySelector('#js-glimpse-navbar-collapse');

    var docEl = document.documentElement;
    var event = ('ontouchstart' in docEl && docEl['ontouchstart'])
        ? 'ontouchstart' : 'click';

    var isOpen = false;
    var classList = headerCollapse.classList;
    var toggleMenuClass = function toggleMenuClass(isOpen) {
        var methodName = (isOpen) ? 'add' : 'remove';
        classList[methodName]('in');
    };

    headerButton.addEventListener('click', function () {
        toggleMenuClass(isOpen = !isOpen);
    });

    /**
     * Headroom
     */

    // detect `position: sticky;` support
    var style = document.createElement( 'test' ).style;
    style.cssText = 'position:' + [ '-webkit-', '-moz-', '-ms-', '-o-', '' ].join( 'sticky; position:' ) + 'sticky' + ';';
    var isSticky = !!style['position'];

    var el = document.querySelector("#js-glimpse-navbar");
    var timer;
    var bodyClassList = document.body.classList;

    // construct an instance of Headroom, passing the element
    var headroom = new Headroom(el, {
        onPin: function () {
            isSticky && bodyClassList.remove('glimpse-header-unpinned');
        },
        onUnpin: function () {
            clearTimeout(timer);
            timer = setTimeout(function () {
                toggleMenuClass(isOpen = false);
            }, 250);
            isSticky && bodyClassList.add('glimpse-header-unpinned');
        }
    }).init();

    var docsDropdownMenuEl = document.querySelector('#js-glimpse-docs-dropdown-menu');
    if (!docsDropdownMenuEl) { return; }
    var headroom = new Headroom(docsDropdownMenuEl).init();

    var selectEl = docsDropdownMenuEl.querySelector('select');
    selectEl.addEventListener('change', function(e) {
        window.location.href = e.target.value;
    });


})();

"use strict";

(function() {
    function setupHeadings() {
        var list = document.getElementsByClassName('main__content-body--doc');
        for (var i = 0; i < list.length; i++) {
            var headers = list[i].querySelectorAll('h1, h2, h3, h4');
            for (var x = 0; x < headers.length; x++) {
                var header = headers[x];
    
                var linkNode = document.createElement('a');
                linkNode.classList.add('header-icon');
                linkNode.classList.add('glimpse-icon');
                linkNode.href = '#' + header.id;
                linkNode.innerHTML = '<img src="/img/icons/link.svg" />';
    
                header.classList.add('header-text')
    
                header.insertBefore(linkNode, header.childNodes[0]);
            }
        }
    }
    
    setupHeadings();
})();
var os = ''
if (navigator.appVersion.indexOf('Win') !== -1) os = 'os-windows';
if (navigator.appVersion.indexOf('Mac') !== -1) os = 'os-macos';

document.body.classList.add(os);
