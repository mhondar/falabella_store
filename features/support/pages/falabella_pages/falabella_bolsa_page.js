const { Selector } = require('testcafe');

exports.bolsaProduct = {
    cantProduct: function() {
        return Selector('[class = "fb-quantity-input__field"]').with({ boundTestRun: testController })
    },
    addProduct: function() {
        return Selector('[class = "fb-quantity-input__plus"]').with({ boundTestRun: testController })
    },
    minusProduct: function() {
        return Selector('[class = "fb-quantity-input__minus"]').with({ boundTestRun: testController })
    },
    garantiaForm: function() {
        return Selector('[class = "fb-static-notification__dropdown-form js-fb-warranty-static-notification-form"]').with({ boundTestRun: testController })
    },
    comprarButton: function() {
        return Selector('[class = "fb-btn fb-btn-primary fb-added-to-basket__cta fb-added-to-basket__cta--basket"]').with({ boundTestRun: testController })
    }

}