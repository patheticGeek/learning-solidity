// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract BasicSecurityContract {
    mapping(uint => Person) public people;
    uint256 public peopleCount = 0;
    
    address owner;
    
    uint256 openingTime = 1621582985;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function addPerson(
        string memory _firstName,
        string memory _lastName
    )
        public onlyOwner
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function addPersonBeforeEnd(
        string memory _firstName,
        string memory _lastName
    )
        public onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
}
