// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Implementation {
    uint256 internal value;
    uint256 internal constant VERSION = 1;

    event ValueChanged(uint256 newValue);

    function setValue(uint256 newValue) external {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieveValue() external view returns (uint256) {
        return value;
    }

    function version() public pure returns(uint256) {
        return VERSION;
    }
}
