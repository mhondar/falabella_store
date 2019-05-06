const { Selector } = require('testcafe');

exports.detailProduct = {
    addBolsa: function() {
        return Selector('[class = "fb-btn fb-btn-primary fb-product-cta__controls--actions--choose full-width-btn"]').with({ boundTestRun: testController })
    },
    seeBolsaButton: function() {
        return Selector('[class = "fb-btn fb-btn-primary fb-added-to-basket__cta fb-added-to-basket__cta--basket"]').with({ boundTestRun: testController })
    }

}