import Main from '../main.pom.js';

class Login extends Main {
    constructor() {
        const elements = {
            usernameInput: () => cy.get('#user-name'),
            passwordInput: () => cy.get('#password'),
            loginBtn     : () => cy.get('#login-button'),
            errorMessage : () => cy.get('h3[data-test="error"]'),
            url          : ()      => cy.url(),
            title        : () => cy.get('title'),
            shoppingCart : () => cy.get('a.shopping_cart_link'),
            menuBtn      : () => cy.get('#react-burger-menu-btn'),
            logoutBtn    : () => cy.get('#logout_sidebar_link'),
            sortProduct  : () => cy.get('select[class="product_sort_container"]'),
            sortActiveOption  : () => cy.get('span[class="active_option"]'),
            addToCartFleeceJacket    : () => cy.get('#add-to-cart-sauce-labs-fleece-jacket'),
            addToCartOnesie    : () => cy.get('#add-to-cart-sauce-labs-onesie'),
            removeFromCartFleeceJacket    : () => cy.get('#remove-sauce-labs-fleece-jacket'),
            removeFromCartOnesie    : () => cy.get('#remove-sauce-labs-onesie'),
            cartIconValue    : () => cy.get('.shopping_cart_badge')
                .invoke('text')
                .then((value) => {
                    parseFloat(value); // Convert to number
                }),
            cartButton: () => cy.get('#shopping_cart_container'),
            checkoutButton: () => cy.get('#checkout'),
            firstNameInput: () => cy.get('#first-name'),
            lastNameInput: () => cy.get('#last-name'),
            zipPostalCodeInput: () => cy.get('#postal-code'),
            continueButton: () => cy.get('#continue'),
            finishButton: () => cy.get('#finish'),
            backHomeButton: () => cy.get('#back-to-products'),
            addToCartBikeLight    : () => cy.get('#add-to-cart-sauce-labs-bike-light'),
            twitterLink    : () => cy.get('li[class="social_twitter"]'),
            facebookLink    : () => cy.get('li[class="social_facebook"]'),
            linkedinLink    : () => cy.get('li[class="social_linkedin"]'),
        };
        super(elements);
    }

    sendAction(action, elementType, elementId, content) {
        let element = super._getElement(elementId);
        switch (elementType) {
            case 'link':
                element.click();
                break;
            case 'button':
                element.click();
                break;
            case 'field':
                element.type(content);
                break;
            case 'option':
                element.select(content);
                break;
            default:
                throw new Error(`Invalid element type ${elementType}`);
        }
    }
}

export default new Login();