/*
 * Parallax methods
 * https://pingsoft.pl/
 */

'use strict';

window.parallax = function (element) {
  let picture = element.querySelector('picture');

  let elementBCR = element.getBoundingClientRect();
  /* let pictureBCR = picture.getBoundingClientRect(); */
  let pictureCS  = getComputedStyle(picture);

  let elementsHeightDiff = 2 * Math.abs(parseInt(pictureCS.bottom || 0));
  let viewportHeight = window.innerHeight || document.documentElement.clientHeight;
  let viewportOffset = viewportHeight - elementBCR.top;
  let viewportOffsetPercentage = ((viewportOffset * 100) / (viewportHeight + elementBCR.height));
  let marginOffset = (viewportOffsetPercentage * elementsHeightDiff / 100);

  picture.style.transform = 'translateY(' + (-1 * marginOffset) + 'px)';
};