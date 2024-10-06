// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavNo;

    struct People {
        uint256 favNo;
        string name;
    }

    // An array of people
    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({name: _name, favNo: _favoriteNumber});
        people.push(People({name: _name, favNo: _favoriteNumber}));
        nameToFavNo[_name]=_favoriteNumber;
    }

    // calldata, memory, storage
}

//0xd9145CCE52D386f254917e481eB44e9943F39138
