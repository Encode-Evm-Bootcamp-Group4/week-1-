// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorldGroup {
    string private text;
    bytes32 private passwordHash;  // Hashed password for security
    address owner;
    event TextUpdated(string newText, address updatedBy);
    event PasswordChanged(bytes32 newPasswordHash);

    constructor(string memory initialPassword) {
        text = "Hello World";
        owner = msg.sender;
        passwordHash = keccak256(abi.encode(initialPassword));  // Store hashed password
    }

    function helloWorld() public view returns (string memory) {
        return text;
    }

    function setText(string calldata newText) public {
        require(msg.sender == owner, "Unauthorized");
        text = newText;
        emit TextUpdated(newText, msg.sender);
    }

    function changePassword(string calldata newPass, string calldata oldPass) public {
        require(keccak256(abi.encode(oldPass)) == passwordHash, "Wrong password!");
        passwordHash = keccak256(abi.encode(newPass));
        emit PasswordChanged(passwordHash);
    }
}
