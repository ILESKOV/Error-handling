pragma solidity 0.8.13

contract Bank{

  mapping(address => uint) public balanceOf;
  
  //It should be very simple, it should be simple interpretation of modifier function name
  //Always check pattern CHECK, EFFECTS, INTERACTIONS
  modifier hasBalance(){
    require(balanceOf[msg.sender] > 0);
    _;
    }
  
  function withdrawAll() public hasBalance{
    uint amountToWithdraw = balanceOf[msg.sender];
    balanceOf[msg.sender] = 0;
    msg.sender.transfer(amountToWithdraw);
    assert(balance[msg.sender] == 0);
    }
    
  function deposit() public payable{
    balanceOf[msg.sender] += msg.value;
    totalSupply += msg.value;
    assert(balanceOf[msg.sender] >= msg.value);
    //assert(this.balance == totalSupply); <-- Wrong invariant
    //User can force deposit ETH without this function, so correct assertation(invariant) is below
    assert(this.balance >= totalSupply);
    }
}
