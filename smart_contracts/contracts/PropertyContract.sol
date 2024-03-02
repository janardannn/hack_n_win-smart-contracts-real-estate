// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract PropertyContract {

    struct Property{
        uint256 propertyRentPrice;
        string propertyName;
        string propertyAddress;
        address owner;
        address tenant;
    }
    
    mapping (
        uint256 => Property
    ) public properties;
    
    uint256 public propertyId;

    function createProperty(
        string memory _propertyName,
        string memory _propertyAddress,
        uint256 _propertyRentPrice
    ) public {
        properties[propertyId] = Property(
            _propertyRentPrice,
            _propertyName,
            _propertyAddress,
            msg.sender,
            address(0)
        );
        propertyId++;
    }

    function addToBlockchain() public {
        // Add to blockchain
    }
    
    function getAllRents() public {
        // Add to blockchain
    }
}