'use strict';

var App = {
  buttonMenu: () => {
    let buttonMenu = document.querySelector('#button-menu');
    if (!!buttonMenu) {
      let _windowWidth = window.innerWidth;

      let handleEscapeKeyEvent = (event) => {
        event = event || window.event;
        if (event.keyCode !== 27) {
          return;
        }

        foreCloseNavigation();
      };

      let foreCloseNavigation = () => {
        clearNavigation();
        document.body.classList.remove('navigation-opened');
        document.body.classList.remove('ship-to-overlay-opened');
      };

      let toggleNavigation = (event) => {
        event = event || window.event;
        let node = event.currentTarget || event.target;

        clearNavigation();

        if(document.body.classList.contains('navigation-opened')) {
          document.body.classList.remove('navigation-opened');
          return;
        }

        document.body.classList.add('navigation-opened');
      };

      let resizeHandler = () => {
        if(_windowWidth === window.innerWidth) {
          return;
        }

        _windowWidth = window.innerWidth;

        foreCloseNavigation();
      };

      let clearNavigation = () => {
        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));
      };

      buttonMenu.addEventListener('click', toggleNavigation, false);
      document.addEventListener('keydown', handleEscapeKeyEvent, false);
      window.addEventListener('resize', resizeHandler, false);
    }
  },
  headerNavigation: () => {
    let items = document.querySelectorAll('header .navigation a');
    if (!!items.length) {
      let handleLinkClick = (event) => {
        event = event || window.event;
        let node = event.currentTarget || event.target;
        let links = node.parentElement;

        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showSubmenuOnClick = _isMobileOrTablet && links.tagName === 'LI' && links.classList.contains('menu-item-has-children');
        if(!_showSubmenuOnClick) {
          return;
        }

        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active'));
        
        if(!links.classList.contains('menu-item-has-children')) {
          return;
        }

        if(links.classList.contains('opened')) {
          links.classList.remove('opened');
          return;
        }

        links.classList.add('opened');
        event.preventDefault();
      };

      items.forEach((item, idx) => item.addEventListener('click', handleLinkClick, false));
    }
  },
  footerNavigation: () => {
    let labels = document.querySelectorAll('footer .navigation .label');
    if (!!labels) {
      let handleLabelClick = (event) => {
        event = event || window.event;
        let node = event.currentTarget || event.target;
        let links = node.nextElementSibling;

        if(!links) {
          return;
        }

        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        if(node.classList.contains('opened')) {
          node.classList.remove('opened');
          return;
        }

        node.classList.add('opened');
      };

      labels.forEach((item, idx) => item.addEventListener('click', handleLabelClick, false));
    }
  },
  headerAccount: () => {
    let section = document.querySelector('header .account');
    if (!!section) {
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';
        if(!_showPanelOnClick) {
          return;
        }

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }
        
        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  headerShipTo: () => {
    let section = document.querySelector('header .ship-to');
    if (!!section) {
      let continents = document.querySelectorAll('.continents-and-countries .continent .name');

      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        togglePanelOnMobileAndTablet(node);
        toggleShipToPanel(node);
      };

      let handleContnentClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let continent = node.parentElement;

        if(continent.classList.contains('active')) {
          continent.classList.remove('active');
          return;
        }
        
        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        continent.classList.add('active');
      };

      let togglePanelOnMobileAndTablet = (node) => {
        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showPanelOnClick = _isMobileOrTablet && !node.classList.contains('ship-to-selection-change');
        if(!_showPanelOnClick) {
          return;
        }

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        section.classList.add('active');
      };

      let toggleShipToPanel = (node) => {
        let _toggleShipToPanelClick = node.classList.contains('ship-to-selection-change');
        if(!_toggleShipToPanelClick) {
          return;
        }
        
        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        document.body.classList.add('ship-to-overlay-opened');
      };

      section.addEventListener('click', handleClick, false);
      continents.forEach((item, idx) => item.addEventListener('click', handleContnentClick, false));
    }
  },
  headerCurrency: () => {
    let section = document.querySelector('header .currency');
    if (!!section) {
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';
        if(!_showPanelOnClick) {
          return;
        }

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  headerLanguage: () => {
    let section = document.querySelector('header .language');
    if (!!section) {
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showPanelOnClick = _isMobileOrTablet && node.tagName !== 'A';
        if(!_showPanelOnClick) {
          return;
        }

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        let _actives = document.querySelectorAll('header .active, header .opened');
            _actives.forEach((item, idx) => item.classList.remove('active', 'opened'));

        section.classList.add('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  headerLanguageDetection: function () {
    let section = document.querySelector('.language-detection');
    if (!!section) {
      let _button = section.querySelector('.circular-icon');

      let handleButtonClick =  () => {
        var _tmp = (new Date()).getTime() + (1000 * 60 * 60 * 24 * 365);
        var _expires = new Date(_tmp);
        document.cookie = 'language_detection=T;expires=' + _expires.toGMTString() + ';path=/';
        section.classList.remove('active');
      };
      
      let initialize =  () => {
        if (document.cookie.indexOf('language_detection') === -1) {
          section.classList.add('active');
          _button.addEventListener('click', handleButtonClick, false);
        }
      };

      initialize();
    }
  },
  ourMissionAndGoals: () => {
    let section = document.querySelector('#our-mission-and-goals');
    if (!!section) {
      let _button = section.querySelector('.show-hidden-content');

      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        if(section.classList.contains('hidden-content-opened')) {
          section.classList.remove('hidden-content-opened');
          return;
        }

        section.classList.add('hidden-content-opened');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  ourReviews: () => {
    let section = document.querySelector('#our-reviews');
    if (!!section) {
      let _index = 0;
      let _width = 0;
      let _itemsPerPage = 1;

      let _reviews = section.querySelector('.reviews');
      let _reviewsInner = section.querySelector('.reviews-inner');
      let _items = section.querySelectorAll('.review');

      let _previous = section.querySelector('.previous');
      let _next = section.querySelector('.next');
      
      let handlePreviousClick = (event) => {
        --_index;
        if(_index < 0) {
          _index = _items.length - _itemsPerPage;
        }

        let _translate = -1 * _width * _index;
        _reviewsInner.style.transform = 'translateX(' + _translate + 'px)';
      };
      
      let handleNextClick = (event) => {
        ++_index;
        if(_index > _items.length - _itemsPerPage) {
          _index = 0;
        }

        let _translate = -1 * _width * _index;
        _reviewsInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      let getItemsPerPageNumber = () => {
        if(window.isExtraSize()) {
          return 1;
        }

        if(window.isSmallSize() || window.isMediumSize()) {
          return 2;
        }

        return 3;
      };

     let getItemWidth = (itemsPerPage) => {
        let _containerWidth = _reviews.clientWidth;
        return Math.ceil(_containerWidth / itemsPerPage);
      };

      let setParams = () => {
        _itemsPerPage = getItemsPerPageNumber();
        _width = getItemWidth(_itemsPerPage);

        _items.forEach((item) => item.style.width = _width + 'px');
        _reviewsInner.style.width = (_width * _items.length) + 'px';
        _reviewsInner.style.transform = 'translateX(0px)';

        section.classList.remove('show-navigation');
        if(_itemsPerPage < _items.length) {
          section.classList.add('show-navigation');
        }
      };

      let initialize = () => {
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
  shopNavigation: () => {
    let section = document.querySelector('#shop-navigation');
    if (!!section) {
      let _index = 0;
      let _width = 0;
      let _itemsPerPage = 2;

      let _wrapper = section.querySelector('.items');
      let _wrapperInner = section.querySelector('.items-inner');
      let _items = section.querySelectorAll('.item');

      let _previous = section.querySelector('.previous');
      let _next = section.querySelector('.next');
      
      let handlePreviousClick = (event) => {
        --_index;
        if(_index < 0) {
          _index = _items.length - _itemsPerPage;
        }

        let _translate = -1 * _width * _index;
        _wrapperInner.style.transform = 'translateX(' + _translate + 'px)';
      };
      
      let handleNextClick = (event) => {
        ++_index;
        if(_index > _items.length - _itemsPerPage) {
          _index = 0;
        }

        let _translate = -1 * _width * _index;
        _wrapperInner.style.transform = 'translateX(' + _translate + 'px)';
      };

      let getItemsPerPageNumber = () => {
        if(window.isExtraSize()) {
          return 3;
        }

        if(window.isSmallSize()) {
          return 4;
        }

        if(window.isMediumSize()) {
          return 5;
        }

        if(window.isLargeSize()) {
          return 7;
        }

        return 8;
      };

      let getItemWidth = (itemsPerPage) => {
        let _containerWidth = _wrapper.clientWidth;
        return Math.ceil(_containerWidth / itemsPerPage);
      };

      let setParams = () => {
        _itemsPerPage = getItemsPerPageNumber();
        _width = getItemWidth(_itemsPerPage);

        _items.forEach((item) => item.style.width = _width + 'px');
        _wrapperInner.style.width = (_width * _items.length) + 'px';
        _wrapperInner.style.transform = 'translateX(0px)';

        section.classList.remove('show-navigation');
        if(_itemsPerPage < _items.length) {
          section.classList.add('show-navigation');
        }
      };

      let initialize = () => {
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
  shopProductGallery: () => {
    let section = document.querySelector('#product');
    if (!!section) {
      let _index = 0;

      let _images = section.querySelectorAll('.gallery .image');
      let _previous = section.querySelector('.previous');
      let _next = section.querySelector('.next');
      let _items = section.querySelectorAll('.pagination div');
      
      let handlePreviousClick = (event) => {
        --_index;
        if(_index < 0) {
          _index = _images.length - 1;
        }
        displaImage();
      };
      
      let handleNextClick = (event) => {
        ++_index;
        if(_index > _images.length - 1) {
          _index = 0;
        }
        displaImage();
      };
      
      let handleItemClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        _index = parseInt(node.getAttribute('data-index'), 10) || 0;
        displaImage();
      };

      let displaImage = () => {
        _images.forEach((item) => item.classList.remove('active'));
        _items.forEach((item) => item.classList.remove('selected'));
        
        _images[_index].classList.add('active');
        _items[_index].classList.add('selected');
      };

      let initialize = () => {
        if (!_images.length) {
          return;
        }

        displaImage();

        _previous.addEventListener('click', handlePreviousClick, false);
        _next.addEventListener('click', handleNextClick, false);
        _items.forEach((item) => item.addEventListener('click', handleItemClick, false));
      };

      initialize();
    }
  },
  shopProductsShipTo: () => {
    let section = document.querySelector('#shop-shipping .ship-to');
    if (!!section) {
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        togglePanelOnMobileAndTablet(node);
        toggleShipToPanel(node);
      };

      let togglePanelOnMobileAndTablet = (node) => {
        let _isMobileOrTablet = window.isExtraSize() || window.isSmallSize() || window.isMediumSize();
        let _showPanelOnClick = _isMobileOrTablet && !node.classList.contains('ship-to-selection-change');
        if(!_showPanelOnClick) {
          return;
        }

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }

        section.classList.add('active');
      };

      let toggleShipToPanel = (node) => {
        let _toggleShipToPanelClick = node.classList.contains('ship-to-selection-change');
        if(!_toggleShipToPanelClick) {
          return;
        }

        document.body.classList.add('ship-to-overlay-opened');
        section.classList.remove('active');
      };

      section.addEventListener('click', handleClick, false);
    }
  },
  shopProductReviews: () => {
    let section = document.querySelector('#product-reviews-and-support');
    if (!!section) {
      let _button = section.querySelector('.reviews .button');
      
      let handleClick = (event) => {
        section.classList.add('show-all-reviews');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  gallery: () => {
    let galleries = document.querySelectorAll('.content-gallery');
    if (!!galleries.length) {
      let moveItems = (gallery) => {
        let _wrapper = gallery.querySelector('.images-inner');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;
        let _currentWidth = parseFloat(gallery.getAttribute('data-current-width')) || 0;
        
        _wrapper.style.transform = 'translateX(-' + ( _currentIndex * _currentWidth ) + 'px)';
      };

      let setPage = (gallery) => {
        let _pages = gallery.querySelectorAll('.pages div');
            _pages.forEach((page) => page.classList.remove('active'));

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;
        let _currentPage = gallery.querySelector('.pages div[data-index="' + _currentIndex + '"]');
            _currentPage.classList.add('active');
      };
      
      let handlePageClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.content-gallery');
        let clickedIndex = parseInt(node.getAttribute('data-index'), 10) || 0;

        gallery.setAttribute('data-current-index', clickedIndex);

        moveItems(gallery);
        setPage(gallery);
      };
      
      let handlePreviousClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.content-gallery');
        let images = gallery.querySelectorAll('.image');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        --_currentIndex;
        if(_currentIndex < 0) {
          _currentIndex = images.length - 1;
        }

        gallery.setAttribute('data-current-index', _currentIndex);

        moveItems(gallery);
        setPage(gallery);
      };
      
      let handleNextClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.content-gallery');
        let images = gallery.querySelectorAll('.image');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        ++_currentIndex;
        if(_currentIndex > images.length - 1) {
          _currentIndex = 0;
        }

        gallery.setAttribute('data-current-index', _currentIndex);

        moveItems(gallery);
        setPage(gallery);
      };

      let calculateWidths = (pictures) => {
        if(!pictures.length) {
          return;
        }

        let picturesParams = pictures[0].getBoundingClientRect();

        let _singleItemWidth = picturesParams.width;
        let _totalWrapperWidth = picturesParams.width * pictures.length;

        return {
          width: _singleItemWidth,
          total: _totalWrapperWidth
        }
      };

      let updateGallery = (gallery, images) => {
        let _wrapper = gallery.querySelector('.images-inner');
            _wrapper.removeAttribute('style');

        gallery.setAttribute('data-current-index', 0);

        let { width, total } = calculateWidths(images);

        gallery.setAttribute('data-current-width', width);
        gallery.setAttribute('data-current-total', total);

        _wrapper.style.width = total + 'px';
        _wrapper.style.transform = 'translateX(0px)';
      };

      let resizeGallery = (gallery) => {
        let _images = gallery.querySelectorAll('.image');

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      let initializeGallery = (gallery) => {
        let _images = gallery.querySelectorAll('.image');
        let _pages = gallery.querySelectorAll('.pages div');

        if(_images.length > 1) {
          gallery.classList.add('show-navigation');
          
          let _next = gallery.querySelector('.next');
              _next.addEventListener('click', handleNextClick, false);
          
          let _previous = gallery.querySelector('.previous');
              _previous.addEventListener('click', handlePreviousClick, false);
          
          _pages.forEach((page) => page.addEventListener('click', handlePageClick, false));
        }

        _images.forEach((image, index) => image.setAttribute('data-index', index));
        _pages.forEach((page, index) => page.setAttribute('data-index', index));

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      let resizeHandle = () => {
        galleries.forEach((gallery) => resizeGallery(gallery));
      };

      galleries.forEach((gallery) => initializeGallery(gallery));
      
      window.addEventListener('resize', resizeHandle, false);
    }
  },
  highlightedListWithImage: () => {
    let section = document.querySelectorAll('.highlighted-list-with-image');
    if (!!section.length) {
      let _items = document.querySelectorAll('.highlighted-list-with-image .item');
      let _headers = document.querySelectorAll('.highlighted-list-with-image .item.clickable h3');
      
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let parent = node.parentElement;

        if(parent.classList.contains('active')) {
          parent.classList.remove('active');
          return;
        }

        _items.forEach((item) => item.classList.remove('active'));

        parent.classList.add('active');
      };

      _headers.forEach((item) => item.addEventListener('click', handleClick, false));
    }
  },
  highlightedContentWithGallery: () => {
    let galleries = document.querySelectorAll('.highlighted-header-with-content-and-gallery');
    if (!!galleries.length) {
      let moveItems = (gallery) => {
        let _wrapper = gallery.querySelector('.images-inner');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;
        let _currentWidth = parseFloat(gallery.getAttribute('data-current-width')) || 0;
        
        _wrapper.style.transform = 'translateX(-' + ( _currentIndex * _currentWidth ) + 'px)';
      };

      let setPage = (gallery) => {
        let _pages = gallery.querySelectorAll('.pages div');
            _pages.forEach((page) => page.classList.remove('active'));

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;
        let _currentPage = gallery.querySelector('.pages div[data-index="' + _currentIndex + '"]');
            _currentPage.classList.add('active');
      };
      
      let handlePageClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.highlighted-header-with-content-and-gallery');
        let clickedIndex = parseInt(node.getAttribute('data-index'), 10) || 0;

        gallery.setAttribute('data-current-index', clickedIndex);

        moveItems(gallery);
        setPage(gallery);
      };
      
      let handlePreviousClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.highlighted-header-with-content-and-gallery');
        let images = gallery.querySelectorAll('.image');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        --_currentIndex;
        if(_currentIndex < 0) {
          _currentIndex = images.length - 1;
        }

        gallery.setAttribute('data-current-index', _currentIndex);

        moveItems(gallery);
        setPage(gallery);
      };
      
      let handleNextClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;
        let gallery = node.closest('.highlighted-header-with-content-and-gallery');
        let images = gallery.querySelectorAll('.image');

        let _currentIndex = parseInt(gallery.getAttribute('data-current-index'), 10) || 0;

        ++_currentIndex;
        if(_currentIndex > images.length - 1) {
          _currentIndex = 0;
        }

        gallery.setAttribute('data-current-index', _currentIndex);

        moveItems(gallery);
        setPage(gallery);
      };

      let calculateWidths = (gallery, pictures) => {
        if(!pictures.length) {
          return;
        }

        let wrapper = gallery.querySelector('.images-outer');
        let wrapperParams = wrapper.getBoundingClientRect();

        let _singleItemWidth = wrapperParams.width;
        let _totalWrapperWidth = wrapperParams.width * pictures.length;

        return {
          width: _singleItemWidth,
          total: _totalWrapperWidth
        }
      };

      let updateGallery = (gallery, images) => {
        let _wrapper = gallery.querySelector('.images-inner');
            _wrapper.removeAttribute('style');

        gallery.setAttribute('data-current-index', 0);

        let { width, total } = calculateWidths(gallery, images);

        gallery.setAttribute('data-current-width', width);
        gallery.setAttribute('data-current-total', total);

        _wrapper.style.width = total + 'px';
        _wrapper.style.transform = 'translateX(0px)';

        images.forEach((image) => image.style.width = width + 'px');
      };

      let resizeGallery = (gallery) => {
        let _images = gallery.querySelectorAll('.image');

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      let initializeGallery = (gallery) => {
        let _images = gallery.querySelectorAll('.image');
        let _pages = gallery.querySelectorAll('.pages div');

        if(_images.length > 1) {
          gallery.classList.add('show-navigation');
          
          let _next = gallery.querySelector('.next');
              _next.addEventListener('click', handleNextClick, false);
          
          let _previous = gallery.querySelector('.previous');
              _previous.addEventListener('click', handlePreviousClick, false);
          
          _pages.forEach((page) => page.addEventListener('click', handlePageClick, false));
        }

        _images.forEach((image, index) => image.setAttribute('data-index', index));
        _pages.forEach((page, index) => page.setAttribute('data-index', index));

        updateGallery(gallery, _images);
        setPage(gallery);
      };

      let resizeHandle = () => {
        galleries.forEach((gallery) => resizeGallery(gallery));
      };

      galleries.forEach((gallery) => initializeGallery(gallery));
      
      window.addEventListener('resize', resizeHandle, false);
    }
  },
  reviewsFilters: () => {
    let section = document.querySelector('#reviews-filters');
    if (!!section) {
      let _button = section.querySelector('.selection');
      
      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        if(section.classList.contains('active')) {
          section.classList.remove('active');
          return;
        }
        
        section.classList.add('active');
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  reviews: () => {
    let section = document.querySelector('#reviews');
    if (!!section) {
      let _button = section.querySelector('.button');

      let handleClick = (event) => {
        event = event || window.event;
        let node = /* event.currentTarget ||  */event.target;

        let _items = document.querySelectorAll('.review.hidden');

        if(_items.length <= 2) {
          section.classList.add('show-all-reviews');
        }

        let _itemsArray = Array.from(_items);
        _itemsArray.slice(0, 2).forEach((item) => item.classList.remove('hidden'));
      };

      _button.addEventListener('click', handleClick, false);
    }
  },
  privacyPolicyBar: function () {
    let section = document.querySelector('#privacy-policy-info');
    if (!!section) {
      let _button = section.querySelector('.options span');

      let handleAcceptClick =  () => {
        var _tmp = (new Date()).getTime() + (1000 * 60 * 60 * 24 * 365);
        var _expires = new Date(_tmp);
        document.cookie = 'cookies_accepted=T;expires=' + _expires.toGMTString() + ';path=/';
        section.classList.remove('active');
      };
      
      let initialize =  () => {
        if (document.cookie.indexOf('cookies_accepted') === -1) {
          section.classList.add('active');
          _button.addEventListener('click', handleAcceptClick, false);
        }
      };

      initialize();
    }
  },
  lazyPictures: () => {
    let imgs = document.querySelectorAll('img.lazy-image');
    let pictures = document.querySelectorAll('picture.lazy-picture');
    if (imgs.length || pictures.length) {

      let loadFinishedCallback = (node) => {
        let tagName = node.tagName === 'IMG' ? 'image' : 'picture';

        if (!node.classList.contains('lazy-' + tagName + '-loading-in-progress')) {
          return;
        }
        node.classList.add('lazy-' + tagName + '-loading-finished');
      };
      
      let attachEvents = () => {
        imgs.forEach((img) => {
          img.onload = () => loadFinishedCallback(img);
        });

        pictures.forEach((picture) => {
          let img = picture.querySelector('img');
          img.onload = () => loadFinishedCallback(picture);
        });
      };

      let lazyLoad = () => {
        imgs = document.querySelectorAll('img.lazy-image:not(.lazy-image-loading-in-progress)');
        imgs.forEach((img) => {
          if (window.isInViewport(img)) {
            const delay = img.classList.contains('lazy-image-defer') ? 5000 : 0;

            let deferLoad = () => {
              img.classList.add('lazy-image-loading-in-progress');
              img.setAttribute('src', img.getAttribute('data-src'));
            };
            
            setTimeout(deferLoad, delay);
          }
        });

        pictures = document.querySelectorAll('picture.lazy-picture:not(.lazy-picture-loading-in-progress)');
        pictures.forEach((picture) => {
          if (window.isInViewport(picture)) {
            picture.classList.add('lazy-picture-loading-in-progress');

            const delay = picture.classList.contains('lazy-picture-defer') ? 5000 : 0;

            let deferLoad = () => {
              let sources = picture.querySelectorAll('[data-srcset]');
                  sources.forEach((source) => source.setAttribute('srcset', source.getAttribute('data-srcset')));
  
              let img = picture.querySelector('img');
                  img.setAttribute('src', img.getAttribute('data-src'));
            };
            
            setTimeout(deferLoad, delay);
          }
        });
      };

      let initialize = () => {
        attachEvents();

        window.addEventListener('scroll', lazyLoad, false);
        window.addEventListener('resize', lazyLoad, false);
        window.addEventListener('click', lazyLoad, false);

        let _shipToOverlay = document.querySelector('.ship-to-overlay');
            _shipToOverlay.addEventListener('scroll', lazyLoad, false);

        let _navigation = document.querySelector('header .navigation');
            _navigation.addEventListener('scroll', lazyLoad, false);

        lazyLoad();
      };

      initialize();
    }
  },
  customerSupportLoadForm: () => {
    let customerSupportButtonLoadForm = document.querySelector('#customer-support-product-partner .load-form');
    let customerSupportForm = document.querySelector('#customer-support-product-contact-form');
    if (!!customerSupportForm) {
      customerSupportButtonLoadForm.addEventListener('click', function(){
        this.style.display="none";
        if (!!customerSupportForm) {
          customerSupportForm.style.maxHeight="unset";
        }
      });
    }
  }
};

window.onload = () => {
  App.buttonMenu();
  App.headerNavigation();
  App.footerNavigation();
  App.lazyPictures();
  App.headerAccount();
  App.headerShipTo();
  App.headerCurrency();
  App.headerLanguage();
  App.headerLanguageDetection();
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
  App.customerSupportLoadForm();
};