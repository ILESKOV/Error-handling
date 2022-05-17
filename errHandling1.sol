pragma solidity 0.8.13

contract Bank{

  mapping(address => uint) public balanceOf;
  uint public totalSupply;
  
  function deposit() public payable{
    balanceOf[msg.sender] += msg.value;
    totalSupply += msg.value;
    assert(totalSupply == (this).balance);
    }
}
