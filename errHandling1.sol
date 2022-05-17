pragma solidity 0.8.13

contract Bank{

  mapping(address => uint) public balanceOf;
  uint public totalSupply;
  
  function deposit() public payable{
    balanceOf[msg.sender] += msg.value;
    totalSupply += msg.value;
    //Wrong statement
    assert(this.balance == totalSupply);
    //User can force deposit ETH without this function, so correct assertation is below
    asert(this.balance >= totalSupply);
    }
}
