pragma solidity ^0.4.18;
http://remix.ethereum.org/#version=soljson-v0.4.18+commit.9cf6e910.js
contract Courses {
    
    struct Instructor {
        uint age;
        string fName;
        string lName;
    }
    
    mapping (address => Instructor) instructors;
    address[] public instructorAccts;
    
    function setInstructor(address _address, uint _age, string _fName, string _lName) public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;
        
        instructorAccts.push(_address) -1;
    }
    
    function getInstructors() view public returns (address[]) {
        return instructorAccts;
    }
    
    function getInstructor(address ins) view public returns (uint, string, string) {
        return (instructors[ins].age, instructors[ins].fName, instructors[ins].lName);
    }
    
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }
}
