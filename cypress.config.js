const {defineConfig}  = require("cypress");
const setupNodeEvents = require("./cypress/settings/setupNodeEvents");

module.exports = defineConfig({
  video: false,
  e2e: {
    setupNodeEvents,
    specPattern      : "cypress/**/*.feature",
    chromeWebSecurity: false,
    env              : {
      "environment": "qa"
    }
  },
});
