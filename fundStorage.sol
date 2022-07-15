// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

// Contract for storing funds of users
contract simpleStorage {
    uint256 balance; // Balance for a specific user

    // structure for storing users
    struct User {
        string user_name;
        uint256 balance;

    }

    // Defining an array of type User to store users
    User[] public users;
    
    // mapping that returns user balances
    mapping (string => uint256) public get_user_balance;

    // This function adds rewarded tokens into the balances.
    // Note: checking is done outside the contract, this function doesn't check
    // if the person is eligible or not
    function add_balance(uint256 new_tokens) public {
        balance += new_tokens;
    }

    // adds a new user to the array with an initial balance
    // initial balance = the award of the question if the user is a new user
    function add_user(string memory _name, uint256 _initialBalance) public {
        users.push(User(_name, _initialBalance));
        get_user_balance[_name] = _initialBalance;
    }



}
