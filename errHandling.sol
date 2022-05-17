pragma solidity 0.8.13

contract Bank{

  mapping(address => uint) public balanceOf;
  
  function withdrawAll() public {
    require(balanceOf[msg.sender] > 0;
    uint amountToWithdraw = balanceOf[msg.sender];
    balanceOf[msg.sender] = 0;
    msg.sender.transfer(amountToWithdraw);
    assert(balance[msg.sender] = 0);
    }
 }
