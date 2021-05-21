// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract PeopleListContract {
    mapping(uint => Person) public people;
    uint256 public peopleCount = 0;
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
}
