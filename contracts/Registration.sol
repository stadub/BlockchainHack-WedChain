pragma solidity ^0.4.4;
import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract Registration is Ownable {
  struct Relationship{
    string Man;
    string Wife;
  }

  mapping (uint=>Relationship) registrations;
  uint curIndex;
  function Registration() {
    curIndex = 0;
    // constructor
  }

  function register(string id, string id2) public returns(uint index){
      index = curIndex++;
      registrations[index] = Relationship({Man:id,Wife:id2});
  }
   
  function getByIndex(uint index) public constant returns (string,string){
      return (registrations[index].Man, registrations[index].Wife);
  }
}