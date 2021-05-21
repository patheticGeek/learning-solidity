// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

import "./SafeMath.sol";

contract MyContract {
    // attach functions in library to a datatype
    using SafeMath for uint256;
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        value = _value1.div(_value2);
    }
}
