const { Given, When, Then } = require('cucumber');
const homeFalabella = require('../../support/pages/falabella_pages/falabella_home_page.js')

When('Busco el articulo con nombre {string}', function(producto) {
    testController
        .typeText(homeFalabella.homeStore.searchBox(), producto)
        .pressKey('enter')

});

When('Abro pagina de detalles del producto {string}', async function(detalle) {
    await testController
        .click(homeFalabella.homeStore.detailProduct().withText(detalle))
});