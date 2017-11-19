pragma solidity ^0.4.18;

contract DocumentRegistry {
    mapping (string => uint256) documents;
    address contractOwner = msg.sender;

    function add(string hash) public returns (uint256 dateAdded) {
        require (msg.sender == contractOwner);
        var timeAdded = block.timestamp;
        documents[hash] = timeAdded;
        return timeAdded;
    }

    function verify(string hash) constant public returns (uint256 dateAdded) {
        return documents[hash];
    }
}
