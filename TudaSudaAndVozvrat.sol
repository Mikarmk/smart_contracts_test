pragma solidity ^0.4.23;

contract BalanceManager {
    mapping(address => uint256) public userBalances;

    function deposit() public payable {
        userBalances[msg.sender] += msg.value; // увеличиваем баланс
    }

    function withdraw(uint256 amount) public {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount; // уменьшаем баланс
        msg.sender.transfer(amount); // возвращаем
    }
}