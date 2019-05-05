const { Given, When, Then } = require('cucumber');
const googlePage = require('../support/pages/google_page.js')

Given('Abro la pagina {string}', async function(url) {
    await testController
        .navigateTo(url)
});

Given('Ingreso la palabra {string}', async function(criterio) {
    await testController
        .typeText(googlePage.searchBox.searchInput(), criterio)
        .pressKey('enter')
});

Given('Selecciono de los Resultados el texto que dice {string}', async function(seleccion) {
    await testController
        .click(googlePage.searchBox.optionList().withText(seleccion))
});