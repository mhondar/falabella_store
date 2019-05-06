const { Selector } = require('testcafe');

exports.googleHome = {
    searchInput: function() {
        return Selector('[class = "gLFyf gsfi"]', { visibilityCheck: true }).with({ boundTestRun: testController })
    },
    optionList: function() {
        return Selector('[class = "LC20lb"]', { visibilityCheck: true }).with({ boundTestRun: testController })
    }

}