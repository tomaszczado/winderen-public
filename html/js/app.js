/*
 * Ajax method
 * https://pingsoft.pl/
 */
'use strict';

window.sendGet = function (url, data, headers) {
  headers = headers || {};
  return new Promise(function (resolve, reject) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url);
    xhr.responseType = 'json';

    if (!!headers) {
      var keys = Object.keys(headers);
      keys.forEach(function (key) {
        xhr.setRequestHeader(key, headers[key]);
      });
    }

    xhr.onload = function () {
      if (xhr.status >= 200 && xhr.status < 300) {
        resolve(xhr.response);
      } else {
        reject(xhr
        /* .statusText */
        );
      }
    };

    xhr.onerror = function () {
      return reject(xhr
      /* .statusText */
      );
    };

    xhr.send(data);
  });
};

window.sendPost = function (url, data, headers) {
  headers = headers || {};
  return new Promise(function (resolve, reject) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', url);
    xhr.responseType = 'json';

    if (!!headers) {
      var keys = Object.keys(headers);
      keys.forEach(function (key) {
        xhr.setRequestHeader(key, headers[key]);
      });
    }

    xhr.onload = function () {
      if (xhr.status >= 200 && xhr.status < 300) {
        resolve(xhr.response);
      } else {
        reject(xhr
        /* .statusText */
        );
      }
    };

    xhr.onerror = function () {
      return reject(xhr
      /* .statusText */
      );
    };

    xhr.send(data);
  });
};
/*
 * Responsive methods
 * https://pingsoft.pl/
 */


'use strict';

var properties = {
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

window.isExtraSize = function () {
  // Small mobile
  return window.innerWidth < properties.widths.small;
  /* return document.body.clientWidth < properties.widths.small */
};

window.isSmallSize = function () {
  // Mobile
  return window.innerWidth >= properties.widths.small && window.innerWidth < properties.widths.medium;
  /* return document.body.clientWidth >= properties.widths.small && document.body.clientWidth < properties.widths.medium */
};

window.isMediumSize = function () {
  // Tablet
  return window.innerWidth >= properties.widths.medium && window.innerWidth < properties.widths.large;
  /* return document.body.clientWidth >= properties.widths.medium && document.body.clientWidth < properties.widths.large */
};

window.isLargeSize = function () {
  // Desktop
  return window.innerWidth >= properties.widths.large && window.innerWidth < properties.widths.wide;
  /* return document.body.clientWidth >= properties.widths.large && document.body.clientWidth < properties.widths.wide */
};

window.isWideSize = function () {
  // Wide desktop
  return window.innerWidth >= properties.widths.wide && window.innerWidth < properties.widths.extraWide;
  /* return document.body.clientWidth >= properties.widths.wide && document.body.clientWidth < properties.widths.extraWide */
};

window.isExtraWideSize = function () {
  // Extra wide desktop
  return window.innerWidth >= properties.widths.extraWide;
  /* return document.body.clientWidth >= properties.widths.extraWide */
};
/*
 * Parallax methods
 * https://pingsoft.pl/
 */


'use strict';

window.parallax = function (element) {
  var picture = element.querySelector('picture');
  var elementBCR = element.getBoundingClientRect();
  /* let pictureBCR = picture.getBoundingClientRect(); */

  var pictureCS = getComputedStyle(picture);
  var elementsHeightDiff = 2 * Math.abs(parseInt(pictureCS.bottom || 0));
  var viewportHeight = window.innerHeight || document.documentElement.clientHeight;
  var viewportOffset = viewportHeight - elementBCR.top;
  var viewportOffsetPercentage = viewportOffset * 100 / (viewportHeight + elementBCR.height);
  var marginOffset = viewportOffsetPercentage * elementsHeightDiff / 100;
  picture.style.transform = 'translateY(' + -1 * marginOffset + 'px)';
};
/*
 * IsInViewport method
 * https://pingsoft.pl/
 */


'use strict';

window.isInViewport = function (element, offset) {
  offset = offset || 0;
  var viewportTop = window.pageYOffset || document.documentElement.scrollTop;
  var viewportBottom = viewportTop + (window.innerHeight || document.documentElement.clientHeight);
  var params = element.getBoundingClientRect();
  var elementTop = params.top + viewportTop + offset;
  var elementBottom = elementTop + params.height + offset;
  var isElementInViewport = elementBottom > viewportTop && elementTop < viewportBottom;
  return isElementInViewport;
};

'use strict';

var App = {
  buttonMenu: function buttonMenu() {
    var buttonMenu = document.querySelector('#button-menu');

    if (!!buttonMenu) {
      var _windowWidth = window.innerWidth;

      var handleEscapeKeyEvent = function handleEscapeKeyEvent(event) {
        event = event || window.event;

        if (event.keyCode !== 27) {
          return;
        }

        foreCloseNavigation();
      };

      var foreCloseNavigation = function foreCloseNavigation() {
        clearNavigation();
        document.body.classList.remove('navigation-opened');
        document.body.classList.remove('ship-to-overlay-opened');
      };

      var toggleNavigation = function toggleNavigation(event) {
        event = event || window.event;
        var node = event.currentTarget || event.target;
        clearNavigation();

        if (document.body.classList.contains('navigation-opened')) {
          document.body.classList.remove('navigation-opened');
          return;
        }

        document.body.classList.add('navigation-opened');
      };

      var resizeHandler = function resizeHandler() {
        if (_windowWidth === window.innerWidth) {
          return;
        }

        _windowWidth = window.innerWidth;
        foreCloseNavigation();
      };

      var clearNavigation = function clearNavigation() {
        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });
      };

      buttonMenu.addEventListener('click', toggleNavigation, false);
      document.addEventListener('keydown', handleEscapeKeyEvent, false);
      window.addEventListener('resize', resizeHandler, false);
    }
  },
  headerNavigation: function headerNavigation() {
    var items = document.querySelectorAll('header .navigation a');

    if (!!items.length) {
      var handleLinkClick = function handleLinkClick(event) {
        event = event || window.event;
        var node = event.currentTarget || event.target;
        var links = node.parentElement;

        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showSubmenuOnClick = _isMobileOrTablet && links.tagName === 'LI' && links.classList.contains('menu-item-has-children');

        if (!_showSubmenuOnClick) {
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active');
        });

        if (!links.classList.contains('menu-item-has-children')) {
          return;
        }

        if (links.classList.contains('opened')) {
          links.classList.remove('opened');
          return;
        }

        links.classList.add('opened');
        event.preventDefault();
      };

      items.forEach(function (item, idx) {
        return item.addEventListener('click', handleLinkClick, false);
      });
    }
  },
  footerNavigation: function footerNavigation() {
    var labels = document.querySelectorAll('footer .navigation .label');

    if (!!labels) {
      var handleLabelClick = function handleLabelClick(event) {
        event = event || window.event;
        var node = event.currentTarget || event.target;
        var links = node.nextElementSibling;

        if (!links) {
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        if (node.classList.contains('opened')) {
          node.classList.remove('opened');
          return;
        }

        node.classList.add('opened');
      };

      labels.forEach(function (item, idx) {
        return item.addEventListener('click', handleLabelClick, false);
      });
    }
  },
  headerAccount: function headerAccount() {
    var section = document.querySelector('header .account');

    if (!!section) {
      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';

        if (!_showPanelOnClick) {
          return;
        }

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  headerShipTo: function headerShipTo() {
    var section = document.querySelector('header .ship-to');

    if (!!section) {
      var continents = document.querySelectorAll('.continents-and-countries .continent .name');

      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        togglePanelOnMobileAndTablet(node);
        toggleShipToPanel(node);
      };

      var handleContnentClick = function handleContnentClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var continent = node.parentElement;

        if (continent.classList.contains('active')) {
          continent.classList.remove('active');
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        continent.classList.add('active');
      };

      var togglePanelOnMobileAndTablet = function togglePanelOnMobileAndTablet(node) {
        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showPanelOnClick = _isMobileOrTablet && !node.classList.contains('ship-to-selection-change');

        if (!_showPanelOnClick) {
          return;
        }

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        section.classList.add('active');
      };

      var toggleShipToPanel = function toggleShipToPanel(node) {
        var _toggleShipToPanelClick = node.classList.contains('ship-to-selection-change');

        if (!_toggleShipToPanelClick) {
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        document.body.classList.add('ship-to-overlay-opened');
      };

      section.addEventListener('click', handleClick, false);
      continents.forEach(function (item, idx) {
        return item.addEventListener('click', handleContnentClick, false);
      });
    }
  },
  headerCurrency: function headerCurrency() {
    var section = document.querySelector('header .currency');

    if (!!section) {
      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';

        if (!_showPanelOnClick) {
          return;
        }

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  headerLanguage: function headerLanguage() {
    var section = document.querySelector('header .language');

    if (!!section) {
      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';

        if (!_showPanelOnClick) {
          return;
        }

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        var _actives = document.querySelectorAll('header .active, header .opened');

        _actives.forEach(function (item, idx) {
          return item.classList.remove('active', 'opened');
        });

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  ourMissionAndGoals: function ourMissionAndGoals() {
    var section = document.querySelector('#our-mission-and-goals');

    if (!!section) {
      var _button = section.querySelector('.show-hidden-content');

      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        if (section.classList.contains('hidden-content-opened')) {
          section.classList.remove('hidden-content-opened');
          return;
        }

        section.classList.add('hidden-content-opened');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  ourReviews: function ourReviews() {
    var section = document.querySelector('#our-reviews');

    if (!!section) {
      var _index = 0;
      var _width = 0;
      var _itemsPerPage = 1;

      var _reviews = section.querySelector('.reviews');

      var _reviewsInner = section.querySelector('.reviews-inner');

      var _items = section.querySelectorAll('.review');

      var _previous = section.querySelector('.previous');

      var _next = section.querySelector('.next');

      var handlePreviousClick = function handlePreviousClick(event) {
        --_index;

        if (_index < 0) {
          _index = _items.length - _itemsPerPage;
        }

        var _translate = -1 * _width * _index;

        _reviewsInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      var handleNextClick = function handleNextClick(event) {
        ++_index;

        if (_index > _items.length - _itemsPerPage) {
          _index = 0;
        }

        var _translate = -1 * _width * _index;

        _reviewsInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      var getItemsPerPageNumber = function getItemsPerPageNumber() {
        if (window.isExtraSize()) {
          return 1;
        }

        if (window.isSmallSize() || window.isMediumSize()) {
          return 2;
        }

        return 3;
      };

      var getItemWidth = function getItemWidth(itemsPerPage) {
        var _containerWidth = _reviews.clientWidth;
        return Math.ceil(_containerWidth / itemsPerPage);
      };

      var setParams = function setParams() {
        _itemsPerPage = getItemsPerPageNumber();
        _width = getItemWidth(_itemsPerPage);

        _items.forEach(function (item) {
          return item.style.width = _width + 'px';
        });

        _reviewsInner.style.width = _width * _items.length + 'px';
        _reviewsInner.style.transform = 'translateX(0px)';
        section.classList.remove('show-navigation');

        if (_itemsPerPage < _items.length) {
          section.classList.add('show-navigation');
        }
      };

      var initialize = function initialize() {
        if (!_items.length) {
          return;
        }

        setParams();
        window.addEventListener('resize', setParams, false);

        _previous.addEventListener('click', handlePreviousClick, false);

        _next.addEventListener('click', handleNextClick, false);
      };

      initialize();
    }
  },
  shopNavigation: function shopNavigation() {
    var section = document.querySelector('#shop-navigation');

    if (!!section) {
      var _index = 0;
      var _width = 0;
      var _itemsPerPage = 2;

      var _wrapper = section.querySelector('.items');

      var _wrapperInner = section.querySelector('.items-inner');

      var _items = section.querySelectorAll('.item');

      var _previous = section.querySelector('.previous');

      var _next = section.querySelector('.next');

      var handlePreviousClick = function handlePreviousClick(event) {
        --_index;

        if (_index < 0) {
          _index = _items.length - _itemsPerPage;
        }

        var _translate = -1 * _width * _index;

        _wrapperInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      var handleNextClick = function handleNextClick(event) {
        ++_index;

        if (_index > _items.length - _itemsPerPage) {
          _index = 0;
        }

        var _translate = -1 * _width * _index;

        _wrapperInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      var getItemsPerPageNumber = function getItemsPerPageNumber() {
        if (window.isExtraSize()) {
          return 3;
        }

        if (window.isSmallSize()) {
          return 4;
        }

        if (window.isMediumSize()) {
          return 5;
        }

        if (window.isLargeSize()) {
          return 7;
        }

        return 8;
      };

      var getItemWidth = function getItemWidth(itemsPerPage) {
        var _containerWidth = _wrapper.clientWidth;
        return Math.ceil(_containerWidth / itemsPerPage);
      };

      var setParams = function setParams() {
        _itemsPerPage = getItemsPerPageNumber();
        _width = getItemWidth(_itemsPerPage);

        _items.forEach(function (item) {
          return item.style.width = _width + 'px';
        });

        _wrapperInner.style.width = _width * _items.length + 'px';
        _wrapperInner.style.transform = 'translateX(0px)';
        section.classList.remove('show-navigation');

        if (_itemsPerPage < _items.length) {
          section.classList.add('show-navigation');
        }
      };

      var initialize = function initialize() {
        if (!_items.length) {
          return;
        }

        setParams();
        window.addEventListener('resize', setParams, false);

        _previous.addEventListener('click', handlePreviousClick, false);

        _next.addEventListener('click', handleNextClick, false);

        section.classList.add('shop-navigation-loaded');
      };

      initialize();
    }
  },
  shopProductGallery: function shopProductGallery() {
    var section = document.querySelector('#product');

    if (!!section) {
      var _index = 0;

      var _images = section.querySelectorAll('.gallery .image');

      var _previous = section.querySelector('.previous');

      var _next = section.querySelector('.next');

      var _items = section.querySelectorAll('.pagination div');

      var handlePreviousClick = function handlePreviousClick(event) {
        --_index;

        if (_index < 0) {
          _index = _images.length - 1;
        }

        displaImage();
      };

      var handleNextClick = function handleNextClick(event) {
        ++_index;

        if (_index > _images.length - 1) {
          _index = 0;
        }

        displaImage();
      };

      var handleItemClick = function handleItemClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        _index = parseInt(node.getAttribute('data-index'), 10) || 0;
        displaImage();
      };

      var displaImage = function displaImage() {
        _images.forEach(function (item) {
          return item.classList.remove('active');
        });

        _items.forEach(function (item) {
          return item.classList.remove('selected');
        });

        _images[_index].classList.add('active');

        _items[_index].classList.add('selected');
      };

      var initialize = function initialize() {
        if (!_images.length) {
          return;
        }

        displaImage();

        _previous.addEventListener('click', handlePreviousClick, false);

        _next.addEventListener('click', handleNextClick, false);

        _items.forEach(function (item) {
          return item.addEventListener('click', handleItemClick, false);
        });
      };

      initialize();
    }
  },
  shopProductsShipTo: function shopProductsShipTo() {
    var section = document.querySelector('#shop-shipping .ship-to');

    if (!!section) {
      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        togglePanelOnMobileAndTablet(node);
        toggleShipToPanel(node);
      };

      var togglePanelOnMobileAndTablet = function togglePanelOnMobileAndTablet(node) {
        var _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();

        var _showPanelOnClick = _isMobileOrTablet && !node.classList.contains('ship-to-selection-change');

        if (!_showPanelOnClick) {
          return;
        }

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        section.classList.add('active');
      };

      var toggleShipToPanel = function toggleShipToPanel(node) {
        var _toggleShipToPanelClick = node.classList.contains('ship-to-selection-change');

        if (!_toggleShipToPanelClick) {
          return;
        }

        document.body.classList.add('ship-to-overlay-opened');
        section.classList.remove('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  shopProductReviews: function shopProductReviews() {
    var section = document.querySelector('#product-reviews-and-support');

    if (!!section) {
      var _button = section.querySelector('.reviews .button');

      var handleClick = function handleClick(event) {
        section.classList.add('show-all-reviews');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  gallery: function gallery() {
    var galleries = document.querySelectorAll('.content-gallery');

    if (!!galleries.length) {
      var moveItems = function moveItems(gallery) {
        var _wrapper = gallery.querySelector('.images-inner');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        var _currentWidth = parseFloat(gallery.getAttribute('data-current-width')) || 0;

        _wrapper.style.transform = 'translateX(-' + _currentIndex * _currentWidth + 'px)';
      };

      var setPage = function setPage(gallery) {
        var _pages = gallery.querySelectorAll('.pages div');

        _pages.forEach(function (page) {
          return page.classList.remove('active');
        });

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        var _currentPage = gallery.querySelector('.pages div[data-index="' + _currentIndex + '"]');

        _currentPage.classList.add('active');
      };

      var handlePageClick = function handlePageClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.content-gallery');
        var clickedIndex = parseInt(node.getAttribute('data-index'), 10) || 0;
        gallery.setAttribute('data-current-index', clickedIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var handlePreviousClick = function handlePreviousClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.content-gallery');
        var images = gallery.querySelectorAll('.image');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        --_currentIndex;

        if (_currentIndex < 0) {
          _currentIndex = images.length - 1;
        }

        gallery.setAttribute('data-current-index', _currentIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var handleNextClick = function handleNextClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.content-gallery');
        var images = gallery.querySelectorAll('.image');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        ++_currentIndex;

        if (_currentIndex > images.length - 1) {
          _currentIndex = 0;
        }

        gallery.setAttribute('data-current-index', _currentIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var calculateWidths = function calculateWidths(pictures) {
        if (!pictures.length) {
          return;
        }

        var picturesParams = pictures[0].getBoundingClientRect();
        var _singleItemWidth = picturesParams.width;

        var _totalWrapperWidth = picturesParams.width * pictures.length;

        return {
          width: _singleItemWidth,
          total: _totalWrapperWidth
        };
      };

      var updateGallery = function updateGallery(gallery, images) {
        var _wrapper = gallery.querySelector('.images-inner');

        _wrapper.removeAttribute('style');

        gallery.setAttribute('data-current-index', 0);

        var _calculateWidths = calculateWidths(images),
            width = _calculateWidths.width,
            total = _calculateWidths.total;

        gallery.setAttribute('data-current-width', width);
        gallery.setAttribute('data-current-total', total);
        _wrapper.style.width = total + 'px';
        _wrapper.style.transform = 'translateX(0px)';
      };

      var resizeGallery = function resizeGallery(gallery) {
        var _images = gallery.querySelectorAll('.image');

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      var initializeGallery = function initializeGallery(gallery) {
        var _images = gallery.querySelectorAll('.image');

        var _pages = gallery.querySelectorAll('.pages div');

        if (_images.length > 1) {
          gallery.classList.add('show-navigation');

          var _next = gallery.querySelector('.next');

          _next.addEventListener('click', handleNextClick, false);

          var _previous = gallery.querySelector('.previous');

          _previous.addEventListener('click', handlePreviousClick, false);

          _pages.forEach(function (page) {
            return page.addEventListener('click', handlePageClick, false);
          });
        }

        _images.forEach(function (image, index) {
          return image.setAttribute('data-index', index);
        });

        _pages.forEach(function (page, index) {
          return page.setAttribute('data-index', index);
        });

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      var resizeHandle = function resizeHandle() {
        galleries.forEach(function (gallery) {
          return resizeGallery(gallery);
        });
      };

      galleries.forEach(function (gallery) {
        return initializeGallery(gallery);
      });
      window.addEventListener('resize', resizeHandle, false);
    }
  },
  highlightedListWithImage: function highlightedListWithImage() {
    var section = document.querySelectorAll('.highlighted-list-with-image');

    if (!!section.length) {
      var _items = document.querySelectorAll('.highlighted-list-with-image .item');

      var _headers = document.querySelectorAll('.highlighted-list-with-image .item.clickable h3');

      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var parent = node.parentElement;

        if (parent.classList.contains('active')) {
          parent.classList.remove('active');
          return;
        }

        _items.forEach(function (item) {
          return item.classList.remove('active');
        });

        parent.classList.add('active');
      };

      _headers.forEach(function (item) {
        return item.addEventListener('click', handleClick, false);
      });
    }
  },
  highlightedContentWithGallery: function highlightedContentWithGallery() {
    var galleries = document.querySelectorAll('.highlighted-header-with-content-and-gallery');

    if (!!galleries.length) {
      var moveItems = function moveItems(gallery) {
        var _wrapper = gallery.querySelector('.images-inner');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        var _currentWidth = parseFloat(gallery.getAttribute('data-current-width')) || 0;

        _wrapper.style.transform = 'translateX(-' + _currentIndex * _currentWidth + 'px)';
      };

      var setPage = function setPage(gallery) {
        var _pages = gallery.querySelectorAll('.pages div');

        _pages.forEach(function (page) {
          return page.classList.remove('active');
        });

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        var _currentPage = gallery.querySelector('.pages div[data-index="' + _currentIndex + '"]');

        _currentPage.classList.add('active');
      };

      var handlePageClick = function handlePageClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.highlighted-header-with-content-and-gallery');
        var clickedIndex = parseInt(node.getAttribute('data-index'), 10) || 0;
        gallery.setAttribute('data-current-index', clickedIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var handlePreviousClick = function handlePreviousClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.highlighted-header-with-content-and-gallery');
        var images = gallery.querySelectorAll('.image');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        --_currentIndex;

        if (_currentIndex < 0) {
          _currentIndex = images.length - 1;
        }

        gallery.setAttribute('data-current-index', _currentIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var handleNextClick = function handleNextClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;
        var gallery = node.closest('.highlighted-header-with-content-and-gallery');
        var images = gallery.querySelectorAll('.image');

        var _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        ++_currentIndex;

        if (_currentIndex > images.length - 1) {
          _currentIndex = 0;
        }

        gallery.setAttribute('data-current-index', _currentIndex);
        moveItems(gallery);
        setPage(gallery);
      };

      var calculateWidths = function calculateWidths(gallery, pictures) {
        if (!pictures.length) {
          return;
        }

        var wrapper = gallery.querySelector('.images-outer');
        var wrapperParams = wrapper.getBoundingClientRect();
        var _singleItemWidth = wrapperParams.width;

        var _totalWrapperWidth = wrapperParams.width * pictures.length;

        return {
          width: _singleItemWidth,
          total: _totalWrapperWidth
        };
      };

      var updateGallery = function updateGallery(gallery, images) {
        var _wrapper = gallery.querySelector('.images-inner');

        _wrapper.removeAttribute('style');

        gallery.setAttribute('data-current-index', 0);

        var _calculateWidths2 = calculateWidths(gallery, images),
            width = _calculateWidths2.width,
            total = _calculateWidths2.total;

        gallery.setAttribute('data-current-width', width);
        gallery.setAttribute('data-current-total', total);
        _wrapper.style.width = total + 'px';
        _wrapper.style.transform = 'translateX(0px)';
        images.forEach(function (image) {
          return image.style.width = width + 'px';
        });
      };

      var resizeGallery = function resizeGallery(gallery) {
        var _images = gallery.querySelectorAll('.image');

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      var initializeGallery = function initializeGallery(gallery) {
        var _images = gallery.querySelectorAll('.image');

        var _pages = gallery.querySelectorAll('.pages div');

        if (_images.length > 1) {
          gallery.classList.add('show-navigation');

          var _next = gallery.querySelector('.next');

          _next.addEventListener('click', handleNextClick, false);

          var _previous = gallery.querySelector('.previous');

          _previous.addEventListener('click', handlePreviousClick, false);

          _pages.forEach(function (page) {
            return page.addEventListener('click', handlePageClick, false);
          });
        }

        _images.forEach(function (image, index) {
          return image.setAttribute('data-index', index);
        });

        _pages.forEach(function (page, index) {
          return page.setAttribute('data-index', index);
        });

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      var resizeHandle = function resizeHandle() {
        galleries.forEach(function (gallery) {
          return resizeGallery(gallery);
        });
      };

      galleries.forEach(function (gallery) {
        return initializeGallery(gallery);
      });
      window.addEventListener('resize', resizeHandle, false);
    }
  },
  reviewsFilters: function reviewsFilters() {
    var section = document.querySelector('#reviews-filters');

    if (!!section) {
      var _button = section.querySelector('.selection');

      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        if (section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        section.classList.add('active');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  reviews: function reviews() {
    var section = document.querySelector('#reviews');

    if (!!section) {
      var _button = section.querySelector('.button');

      var handleClick = function handleClick(event) {
        event = event || window.event;
        var node =
        /* event.currentTarget ||  */
        event.target;

        var _items = document.querySelectorAll('.review.hidden');

        if (_items.length <= 2) {
          section.classList.add('show-all-reviews');
        }

        var _itemsArray = Array.from(_items);

        _itemsArray.slice(0, 2).forEach(function (item) {
          return item.classList.remove('hidden');
        });
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  privacyPolicyBar: function privacyPolicyBar() {
    var section = document.querySelector('#privacy-policy-info');

    if (!!section) {
      var _button = section.querySelector('.options span');

      var handleAcceptClick = function handleAcceptClick() {
        var _tmp = new Date().getTime() + 1000 * 60 * 60 * 24 * 365;

        var _expires = new Date(_tmp);

        document.cookie = 'cookies_accepted=T;expires=' + _expires.toGMTString() + ';path=/';
        section.classList.remove('active');
      };

      var initialize = function initialize() {
        if (document.cookie.indexOf('cookies_accepted') === -1) {
          section.classList.add('active');

          _button.addEventListener('click', handleAcceptClick, false);
        }
      };

      initialize();
    }
  },
  lazyPictures: function lazyPictures() {
    var imgs = document.querySelectorAll('img.lazy-image');
    var pictures = document.querySelectorAll('picture.lazy-picture');

    if (imgs.length || pictures.length) {
      var loadFinishedCallback = function loadFinishedCallback(node) {
        var tagName = node.tagName === 'IMG' ? 'image' : 'picture';

        if (!node.classList.contains('lazy-' + tagName + '-loading-in-progress')) {
          return;
        }

        node.classList.add('lazy-' + tagName + '-loading-finished');
      };

      var attachEvents = function attachEvents() {
        imgs.forEach(function (img) {
          img.onload = function () {
            return loadFinishedCallback(img);
          };
        });
        pictures.forEach(function (picture) {
          var img = picture.querySelector('img');

          img.onload = function () {
            return loadFinishedCallback(picture);
          };
        });
      };

      var lazyLoad = function lazyLoad() {
        imgs = document.querySelectorAll('img.lazy-image:not(.lazy-image-loading-in-progress)');
        imgs.forEach(function (img) {
          if (window.isInViewport(img)) {
            var delay = img.classList.contains('lazy-image-defer') ? 5000 : 0;

            var deferLoad = function deferLoad() {
              img.classList.add('lazy-image-loading-in-progress');
              img.setAttribute('src', img.getAttribute('data-src'));
            };

            setTimeout(deferLoad, delay);
          }
        });
        pictures = document.querySelectorAll('picture.lazy-picture:not(.lazy-picture-loading-in-progress)');
        pictures.forEach(function (picture) {
          if (window.isInViewport(picture)) {
            picture.classList.add('lazy-picture-loading-in-progress');
            var delay = picture.classList.contains('lazy-picture-defer') ? 5000 : 0;

            var deferLoad = function deferLoad() {
              var sources = picture.querySelectorAll('[data-srcset]');
              sources.forEach(function (source) {
                return source.setAttribute('srcset', source.getAttribute('data-srcset'));
              });
              var img = picture.querySelector('img');
              img.setAttribute('src', img.getAttribute('data-src'));
            };

            setTimeout(deferLoad, delay);
          }
        });
      };

      var initialize = function initialize() {
        attachEvents();
        window.addEventListener('scroll', lazyLoad, false);
        window.addEventListener('resize', lazyLoad, false);
        window.addEventListener('click', lazyLoad, false);

        var _shipToOverlay = document.querySelector('.ship-to-overlay');

        _shipToOverlay.addEventListener('scroll', lazyLoad, false);

        var _navigation = document.querySelector('header .navigation');

        _navigation.addEventListener('scroll', lazyLoad, false);

        lazyLoad();
      };

      initialize();
    }
  }
};

window.onload = function () {
  App.buttonMenu();
  App.headerNavigation();
  App.footerNavigation();
  App.lazyPictures();
  App.headerAccount();
  App.headerShipTo();
  App.headerCurrency();
  App.headerLanguage();
  App.ourMissionAndGoals();
  App.ourReviews();
  App.shopNavigation();
  App.shopProductGallery();
  App.shopProductsShipTo();
  App.shopProductReviews();
  App.gallery();
  App.highlightedListWithImage();
  App.highlightedContentWithGallery();
  App.reviewsFilters();
  App.reviews();
  App.privacyPolicyBar();
};