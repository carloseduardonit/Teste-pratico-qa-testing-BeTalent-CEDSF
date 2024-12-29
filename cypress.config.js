const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    experimentalStudio: true,
    baseUrl: 'https://www.saucedemo.com',
    pageLoadTimeout: 120000,
    //waitForAnimations: false,
    setupNodeEvents(on, config) {
      // implement node event listeners here
      
    },
    
  },
});
