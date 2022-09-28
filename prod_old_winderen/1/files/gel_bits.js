var Configurator = function (topOptions, leftOptions, topOptionSummaryLabel, leftOptionSummaryLabel,
    buyButton, defaultTopOption, defaultLeftOption) {

    var activeClass = 'active';

    var selectedTopOption = defaultTopOption;
    var selectedLeftOption = defaultLeftOption;

    var updateActiveElements = function () {
        topOptions.find('li.active').removeClass(activeClass);
        leftOptions.find('li.active').removeClass(activeClass);

        var topOptionElement = topOptions.find('li[data-top-option-id=' + selectedTopOption + ']');
        var leftOptionElement = leftOptions.find('li[data-left-option-id=' + selectedLeftOption + ']');
        topOptionElement.addClass(activeClass);
        leftOptionElement.addClass(activeClass);

        topOptionElement.parents('li.shop-item-gel-bits-configurator-top-option').addClass(activeClass);
        leftOptionElement.parents('li.shop-item-gel-bits-configurator-left-option').addClass(activeClass);

        topOptionSummaryLabel.text(topOptionElement.data('top-option-label'));
        leftOptionSummaryLabel.text(leftOptionElement.data('left-option-label'));

        var buyDisabled = selectedLeftOption == 0 && selectedTopOption == 0;
        buyButton.prop('disabled', buyDisabled);
    };

    var updatePage = function () {
        PageDivReload('ajax.php?get=shop_item_gelbits_part&id1=' + selectedTopOption + '&id2=' + selectedLeftOption, 'productgal');
    };

    var setTopOption = function (topOptionId) {
        selectedTopOption = topOptionId;
        updateSelection();
    };

    var setLeftOption = function (leftOptionId) {
        selectedLeftOption = leftOptionId;
        updateSelection();
    };

    var updateSelection = function () {
        updateActiveElements();
        updatePage();
    }

    return {
        setTopOption: setTopOption,
        setLeftOption: setLeftOption,
        updateSelection: updateSelection
    };
};

var topOptions = $('.shop-item-gel-bits-configurator-top-options');
var leftOptions = $('.shop-item-gel-bits-configurator-left-options');

var firstTopOptionId = topOptions.children('li').first().data('top-option-id');
var firstLeftOptionId = leftOptions.children('li').first().data('left-option-id');

var topOptionSummaryLabel = $('.shop-item-gel-bits-configurator-summary-selection-top-option');
var leftOptionSummaryLabel = $('.shop-item-gel-bits-configurator-summary-selection-left-option');
var buyButton = $('.shop-item-add-to-cart-button');

var configurator = new Configurator(
    topOptions, leftOptions, topOptionSummaryLabel, leftOptionSummaryLabel,
    buyButton, firstTopOptionId, firstLeftOptionId
);

topOptions.find('li:.shop-item-gel-bits-configurator-option-sizes-available').click(function (e) {
    e.preventDefault();
    var firstOption = $(this).find('li').first();
    configurator.setTopOption(firstOption.data('top-option-id'));
    e.stopPropagation();
});

topOptions.find('li:not(.shop-item-gel-bits-configurator-option-sizes-available)').click(function (e) {
    e.preventDefault();
    configurator.setTopOption($(this).data('top-option-id'));
    e.stopPropagation();
});

leftOptions.find('li:not(.shop-item-gel-bits-configurator-option-sizes-available)').click(function (e) {
    e.preventDefault();
    configurator.setLeftOption($(this).data('left-option-id'));
    e.stopPropagation();
});

configurator.updateSelection();