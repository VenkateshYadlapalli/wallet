pragma solidity >=0.5.13 < 0.7.3;

contract CorporateCreditCard{
    
    address public Myaddr;
    uint cardbalance;
    
    
    constructor() public {
        Myaddr=msg.sender;
        
    }
    
    function  deposit() public payable{
        cardbalance+=msg.value;
        
    }
    function withdraw(string  grad,uint256 amount)  public payable  {
        
        address payable abc=msg.sender;
        if(grad=="1A" || grad=="1B" || grad=="1C" ){
            require(amount > 30 ether ,"you are not allowed to withdraw more than 30 ethers");
            
            abc.transfer(amount);
        }
        else if(grad=="2A" || grad=="2B" || grad=="2C"){
            require(amount >20 ether,"you are not allowed to withdraw more than 20 ethers");
            abc.transfer(amount);
            
        }
        else if(grad=="3A" || grad=="3B" || grad=="3C"){
            require(amount >10 ether," you are not allowed to withdraw more than 10 ethers");
            abc.transfer(amount);
        }
        else if(grad=="4A" || grad=="4B" || grad=="4C"){
            require(amount>5 ether,"you are not allowed to withdraw more than 5 ethers");
            abc.transfer(amount);
        }
        else if(grad =="5A" || grad=="5B" || grad=="5C"){
            require(amount>2 ether,"you are not allowed to withdraw more thann 2 ethers");
            abc.transfer(amount);
        }
    }
    function revealBalance() public view  returns(uint256){
        return(address(this).balance);
    }
}
