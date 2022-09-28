/*
 * IsInViewport method
 * https://pingsoft.pl/
 */

'use strict';

window.isInViewport = function (element, offset) {
  offset = offset || 0;

  let viewportTop = window.pageYOffset || document.documentElement.scrollTop;
  let viewportBottom = viewportTop + (window.innerHeight || document.documentElement.clientHeight);

  let params = element.getBoundingClientRect();
  let elementTop = params.top + viewportTop + offset;
  let elementBottom = elementTop + params.height + offset;

  let isElementInViewport = elementBottom > viewportTop && elementTop < viewportBottom;

  return isElementInViewport;
};