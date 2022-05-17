pragma solidity 0.8.13

contract Bank{

  mapping(address => uint) public balanceOf;
  uint public totalSupply;
  
  function deposit() public payable{
    balanceOf[msg.sender] += msg.value;
    totalSupply += msg.value;
    assert(balanceOf[msg.sender] >= msg.value);
    //assert(this.balance == totalSupply); <-- Wrong invariant
    //User can force deposit ETH without this function, so correct assertation(invariant) is below
    assert(this.balance >= totalSupply);
    }
}
