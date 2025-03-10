const { addCucumberPreprocessorPlugin } = require("@badeball/cypress-cucumber-preprocessor");
const webpack = require("@cypress/webpack-preprocessor");
const {webpackOptions} = require('../../webpack.config');
const helpers = require('./helpers.js');

const setupNodeEvents = async(on, config) => {
    on('task', {
        getUser() {
            return helpers.getUserDataDetails(config);
        },
    });
    await addCucumberPreprocessorPlugin(on, config);
    on("file:preprocessor",  webpack(webpackOptions(config)));
    return config;
}



module.exports = setupNodeEvents;