const { Selector } = require('testcafe');

exports.searchBox = {
    searchInput: function() {
        return Selector('#searchQuestion"]').with({ boundTestRun: testController })
    },
    resultList: function() {
        return Selector('[class = "LC20lb"]').with({ boundTestRun: testController })
    }

}