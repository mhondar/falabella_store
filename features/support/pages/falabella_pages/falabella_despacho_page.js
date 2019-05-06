const { Selector } = require('testcafe');

exports.despachoProduct = {
    despachoTitle: function() {
        return Selector('[class = "fb-quantity-input__field"]').with({ boundTestRun: testController })
    }
}