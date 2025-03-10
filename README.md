# SDET_Coding_Exercise

This is the project about the validation of the **https://www.saucedemo.com/** web which is tested (BDD) with frontend automation using Cypress + Cucumber (Gherkin language). <br />

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system

### Prerequisites

The following software is required to be properly installed/downloaded: <br />
**Node.js** (comes with NPM) <br />
**Frameworks** <br />
-Cypress 13.13.3 <br />
-Cucumber <br />
**Files** <br />
-Download this SDET_Coding_Exercise folder <br />

### Installing

-Clone the repository in your computer <br />
-Switch to **develop** branch <br />
-Pull the latest changes <br />

## Running the tests

-Open the **SDET_Coding_Exercise** folder with Visual Studio Code or any other IDE<br />
-Once inside the project, open a terminal <br />
-Run the command **npm install** to install all the dependencies <br />
-Run the command **npx cypress open** to open the Cypress Test Runner UI. <br />
-A cypress interface will pop-up, there you can choose the test cases to be executed, acocording to each feature (BDD) <br />
-Alternatively, run **npx cypress run** to execute tests in headless mode. <br />

## Deployment

Check the package.json file to see the dependencies.

## Built With

* [NPM](https://docs.npmjs.com/about-npm) - Package Manager
* [Cypress](https://www.cypress.io/) - Frontend automation framework
* [Cucumber](https://cucumber.io/) - BDD testing tool
* [badeball/cypress-cucumber-preprocessor](https://github.com/badeball/cypress-cucumber-preprocessor) - Required for cypress to work with cucumber
* [badeball/cypress-configuration](https://github.com/badeball/cypress-configuration) - A re-implementation of Cypress' configuration resolvement and search for test files

## Authors

* **Wilson Ray Villanueva** - (https://github.com/wilsonray)

## Acknowledgments

* Jesús Perez Sandoval, my mentor
* Hat tip to anyone whose code was used
