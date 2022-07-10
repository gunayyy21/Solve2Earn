// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

// Contract for storing funds of users
contract simpleStorage {
    uint256 balance; // Balance for a specific user

    // structure for storing users
    struct User {
        uint256 balance;
        string name;
    }

    // Defining an array of type User
    User[] public users;
}
