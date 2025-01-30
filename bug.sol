```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Not enough balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}

//In the above code the transfer function does not check for zero address. 
//The below function address this issue.
```