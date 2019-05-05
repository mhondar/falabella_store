const { Given, When, Then } = require('cucumber');
const homeFalabella = require('../support/pages/falabella_pages/falabella_home_page.js')

Given('Verifico que se muestre la pagina {string}', async function(url) {
    await testController
        .expect(homeFalabella.searchBox.searchInput)
});

When('Busco el articulo con nombre {string}', async function(producto) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});

When('Abro pagina de detalles del producto {string}', async function(detalle) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
});