import {Given, When, Then} from "@badeball/cypress-cucumber-preprocessor";
import pom from '../pom';
let pageObject = null;

Given('POM configuration has been initialized for {string}', (name) => {
    pageObject = pom[name];
    pageObject._loadEndPoint(name);
});

/** ------------------------------------------- **/
/** Steps definitions for the API .feature file **/
/** ------------------------------------------- **/

When('a {word} request is sent to the {string} endpoint', (method, endPoint, settings) => {
    pageObject.sendRequest(method, endPoint, settings);
});

When('I show the {string} endpoint {word}', (endPoint, type) => {
    pageObject._showManager(type, endPoint);
});

Then('the response on {string} should have the parameter {string} with condition {string} and value {string}', (endpoint, field, condition, value) => {
    pageObject._validateResponse(endpoint, field, condition, value);
});
/** ------------------------------------------- **/
/** Steps definitions for the E2E .feature file **/
/** ------------------------------------------- **/

Given('the user goes to the {word} page', (endPoint) => {
    pageObject._open(endPoint);
});

When(/^the user (clicks|types|selects|actions|...) ?(?: in)? the (button|field|link|fields|option|elements|...) "([^"]*)"?(?: with value "([^"]*)")?$/, (action, elementType, elementId, content) => {
    pageObject.sendAction(action, elementType, elementId, content);
});

Then(/^the (element|section|field|button|list|image|...) "([^"]*)" should ?(?: be)? "([^"]*)"?(?: "([^"]*)")?$/, (elementType, elementId, condition, content) => {
    pageObject._validate(elementType, elementId, condition, content);
});

Then('the prices should be in {word} order', (sortMethod) => {
    pageObject._sortItems(sortMethod);
});

Then('the {string} of {string} from {string} page is stored in {string} variable', (elementDetail, group, pageSection, variableKey) => {
    pageObject._captureElementDetail(elementDetail, group, pageSection, variableKey);
});

Then(/^"([^"]*)" should ?(?: be)? "([^"]*)" "([^"]*)"$/, (variable1, condition, variable2) => {
    pageObject._simpleValidate(variable1, condition, variable2);
});