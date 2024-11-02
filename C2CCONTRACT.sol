pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract MyCrowdsale {
    MyToken public token;

    function MyCrowdsale(MyToken _token) public {
        token = _token;
    }

    function buyTokens() public payable {
        uint256 amount = msg.value; /
        token.mint(msg.sender, amount);
    }
}