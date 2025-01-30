```solidity
function transfer(address to, uint amount) public {
  require(to != address(0), "Cannot transfer to zero address");
  require(balanceOf[msg.sender] >= amount, "Not enough balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```