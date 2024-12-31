const { defineConfig } = require("cypress");

module.exports = defineConfig({
  video: true,
  
  e2e: {
    baseUrl: 'https://www.saucedemo.com',
    experimentalStudio: true,
    chromeWebSecurity: false,
    pageLoadTimeout: 120000,
    //waitForAnimations: false,
    setupNodeEvents(on, config) {
      // implement node event listeners here
      
    },
    
  },
});
