var Election = artifacts.require("./Election.sol");

contract("Election", function(accounts) {

    it("initializes with 3 candidates", function() {
        return Election.deployed().then(function(i) {
            return i.candidateCount();
        }).then(function(count) {
            assert.equal(count, 3);
        });
    });
});