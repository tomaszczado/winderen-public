/*
 * Responsive methods
 * https://pingsoft.pl/
 */

'use strict';

let properties = {
  widths: {
    extra: 576,
    small: 768,
    medium: 992,
    large: 1200,
    wide: 1500,
    extraWide: 1800
  },
  spaces: {
    extra: 15,
    small: 15,
    medium: 30,
    large: 50,
    wide: 80,
    extraWide: 80
  }
};

window.isExtraSize = () => { // Small mobile
  return window.innerWidth < properties.widths.small
  /* return document.body.clientWidth < properties.widths.small */
}

window.isSmallSize = () => { // Mobile
  return window.innerWidth >= properties.widths.small && window.innerWidth < properties.widths.medium
  /* return document.body.clientWidth >= properties.widths.small && document.body.clientWidth < properties.widths.medium */
}

window.isMediumSize = () => { // Tablet
  return window.innerWidth >= properties.widths.medium && window.innerWidth < properties.widths.large
  /* return document.body.clientWidth >= properties.widths.medium && document.body.clientWidth < properties.widths.large */
}

window.isLargeSize = () => { // Desktop
  return window.innerWidth >= properties.widths.large && window.innerWidth < properties.widths.wide
  /* return document.body.clientWidth >= properties.widths.large && document.body.clientWidth < properties.widths.wide */
}

window.isWideSize = () => { // Wide desktop
  return window.innerWidth >= properties.widths.wide && window.innerWidth < properties.widths.extraWide
  /* return document.body.clientWidth >= properties.widths.wide && document.body.clientWidth < properties.widths.extraWide */
}

window.isExtraWideSize = () => { // Extra wide desktop
  return window.innerWidth >= properties.widths.extraWide
  /* return document.body.clientWidth >= properties.widths.extraWide */
}