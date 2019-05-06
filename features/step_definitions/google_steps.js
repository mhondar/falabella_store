const { Given, When, Then } = require('cucumber');
const { Selector } = require('testcafe');
const googlePage = require('../support/pages/google_page.js')

Given('Abro la pagina {string}', async function(url) {
    await testController
        .navigateTo(url)
});

Given('Ingreso la palabra {string}', async function(criterio) {
    await testController
        .typeText(googlePage.googleHome.searchInput(), criterio)
        .pressKey('enter')
});

Given('Selecciono de los Resultados el texto que dice {string}', async function(seleccion) {
    await testController
        .click(googlePage.googleHome.optionList().withText(seleccion))
});