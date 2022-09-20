
var CheckoutSection = function (sectionElement, checkboxElement) {
    var hiddenClass = 'hidden';

    var update = function () {
        if (isChecked()) {
            show();
        } else {
            hide();
        }
    }

    var show = function () {
        sectionElement.removeClass(hiddenClass);
    }

    var hide = function () {
        sectionElement.addClass(hiddenClass);
    }

    var isChecked = function () {
        return checkboxElement.prop('checked') === true;
    }

    return {
        update: update
    };
};

var ShippingPrice = function (countrySelect, shippingCountrySelect, customShippingCheckbox, shippingToLabel) {
    var ajaxEndpoint = '/ajax.php?get=shop_cart_part&country=';
    var notSelectedId = 0;

    var getActiveCountrySelect = function () {
        if (customShippingCheckbox.prop('checked') === true) {
            return shippingCountrySelect;
        } else {
            return countrySelect;
        }
    }

    var updatePrice = function () {
        var activeCountrySelect = getActiveCountrySelect();
        var selectedCountry = activeCountrySelect.find('option:selected');

        var countryId = selectedCountry.prop('value');
        var countryName = selectedCountry.text();

        if (countryId == notSelectedId) {
            return;
        }

        var ajaxUrl = ajaxEndpoint + countryId;

        // $('#cart-sidebar-items').load(ajaxUrl, function() {
        //     shippingToLabel.text(countryName);
        // });
    };

    return {
        updatePrice: updatePrice
    };
};

var VatZeroInformation = function (countrySelect, shippingCountrySelect, customShippingCheckbox, vatZeroInformationBox) {
    var notSelectedId = 0;
    var vatZeroCountries = [
        'Austria', 'Belgium', 'Bulgaria', 'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia',
        'Finland', 'France', 'Germany', 'Greece', 'Hungary',
        'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta',
        'Netherlands', 'Portugal', 'Romania', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 'United Kingdom'
    ];

    var hiddenClass = 'hidden';

    var getActiveCountrySelect = function () {
        if (customShippingCheckbox.prop('checked') === true) {
            return shippingCountrySelect;
        } else {
            return countrySelect;
        }
    };

    var updateVatZeroVisibility = function () {
        var activeCountrySelect = getActiveCountrySelect();
        var selectedCountry = activeCountrySelect.find('option:selected');

        var countryName = selectedCountry.text();
        if (vatZeroCountries.indexOf(countryName) != -1) {
            vatZeroInformationBox.removeClass(hiddenClass);
        } else {
            vatZeroInformationBox.addClass(hiddenClass);
        }
    };

    return {
        updateVatZeroVisibility: updateVatZeroVisibility
    };
}

$(document).ready(function () {
    var shippingCheckboxElement = $('#shop-checkout-shipping-option');
    var shippingSectionElement = $('#shop-checkout-custom-shipping-fields');
    var shippingSection = new CheckoutSection(shippingSectionElement, shippingCheckboxElement);
    shippingCheckboxElement.click(function (e) {
        shippingSection.update();
        if ($('#shop-checkout-shipping-option').prop('checked') === true) {
            $('#shop-checkout-dropshipping-option').prop('checked', false);
            dropshippingSection.update();
        }
    });


    var dropshippingCheckboxElement = $('#shop-checkout-dropshipping-option');
    var dropshippingSectionElement = $('#shop-checkout-custom-dropshipping-fields');
    var dropshippingSection = new CheckoutSection(dropshippingSectionElement, dropshippingCheckboxElement);
    dropshippingCheckboxElement.click(function (e) {
        dropshippingSection.update();
        if ($('#shop-checkout-dropshipping-option').is(':checked')) {
            $('#shop-checkout-shipping-option').prop('checked', false);
            shippingSection.update();
        }
    });


    var invoiceCheckboxElement = $('#shop-checkout-invoice-option');
    var invoiceSectionElement = $('#shop-checkout-custom-invoice-fields');
    var invoiceSection = new CheckoutSection(invoiceSectionElement, invoiceCheckboxElement);
    invoiceCheckboxElement.click(function (e) {
        invoiceSection.update();
    });

    var countrySelect = $('#kraj_id');
    var shippingCountrySelect = $('#wys_kraj_id');
    var shippingToLabel = $('#cart-checkout-sidebar-cart-shipping-to');
    var shippingPrice = new ShippingPrice(
        countrySelect, shippingCountrySelect, shippingCheckboxElement, shippingToLabel
    );

    var vatZeroInformationBox = $('#shop-checkout-invoice-vat-zero-details');
    var vatZeroInformationField = VatZeroInformation(countrySelect, shippingCountrySelect, shippingCheckboxElement, vatZeroInformationBox);

    countrySelect.change(function () {
        shippingPrice.updatePrice();
        vatZeroInformationField.updateVatZeroVisibility();
    });
    shippingCountrySelect.change(function () {
        shippingPrice.updatePrice();
        vatZeroInformationField.updateVatZeroVisibility();
    });
    shippingCheckboxElement.change(function () {
        shippingPrice.updatePrice();
        vatZeroInformationField.updateVatZeroVisibility();
    });

    shippingPrice.updatePrice();
    vatZeroInformationField.updateVatZeroVisibility();
});
