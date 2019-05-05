const { Selector } = require('testcafe');

exports.searchBox = {
    searchInput: function() {
        return Selector('[class = "gLFyf gsfi"]').with({ boundTestRun: testController })
    },
    optionList: function() {
        return Selector('[class = "LC20lb"]').with({ boundTestRun: testController })
    }

}