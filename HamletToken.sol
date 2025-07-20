```
pragma solidity ^0.8.0;
contract HamletToken {
    string public name = "Hamlet Token";
    string public symbol = "$HAM";
    uint256 public totalSupply = 10000000;
    mapping(address => uint256) public balances;
    constructor() {
        balances[msg.sender] = totalSupply;
    }
    function transfer(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }
}
```