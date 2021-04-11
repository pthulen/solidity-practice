// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.11 <0.7.0;
contract ExceptionExample {

 mapping(address => uint64) public balanceReceived;

 function receiveMoney() public payable {
     //if the new balance isn't bigger or equal to the old balance -> error
 assert(balanceReceived[msg.sender] += uint64(msg.value) >= balanceReceived[msg.sender]);
 balanceReceived[msg.sender] += uint64(msg.value);
 }

 function withdrawMoney(address payable _to, uint _amount) public {
 require(_amount <= balanceReceived[msg.sender], "not enough funds punk!");
 
 balanceReceived[msg.sender] -= _amount;
 _to.transfer(_amount);
 
 }
}