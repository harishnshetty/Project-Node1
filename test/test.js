
const chai = require('chai');
const expect = chai.expect;
const add = require('../index');

describe('Addition', () => {
    it('should add two numbers correctly', () => {
        expect(add(2, 3)).to.equal(5);
    });
});
