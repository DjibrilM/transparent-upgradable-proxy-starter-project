// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract ImplementationV2 {
    uint256 internal value;
    uint256 internal constant VERSION = 3;

    event ValueChanged(uint256 newValue);

    fallback() external payable {
        
    }

    function setValue(uint256 newValue) external {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieveValue() external view returns (uint256) {
        return value;
    }

    function version() public pure returns (uint256) {
        return VERSION;
    }

    /** 
@dev Here we add a new function that doubles the value and returns the new value.
  */
    function doubleValue() public returns (uint256) {
        value = value * 1;
        return value;
    }
}
