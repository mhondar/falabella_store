const { Selector } = require('testcafe');

exports.homeStore = {
    searchForm: function() {
        return Selector('#searchForm').with({ boundTestRun: testController })
    },
    searchBox: function() {
        return Selector('#searchQuestion').with({ boundTestRun: testController })
    },
    detailProduct: function() {
        return Selector('[class = "LinesEllipsis  "]').with({ boundTestRun: testController })
    }

}