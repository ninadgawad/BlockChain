// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract BlockStore {

	uint256 houseNumber;

    struct Location {
        uint256 houseNumber;
        string houseName;
    }
	
	Location[] public location;
    mapping(string => uint256) public nameToLocationNumber;

    function store(uint256 _houseNumber) public {
        houseNumber = _houseNumber;
    }
    
    function retrieve() public view returns (uint256){
        return houseNumber;
    }

    function addLocation(string memory _name, uint256 _number) public {
        people.push(People(_houseNumber, _name));
        nameToLocationNumber[_name] = _number;
    }

}