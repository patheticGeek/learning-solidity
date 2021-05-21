// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract MyContract {
    string public value = "my value";

    function set(string memory _value) public {
      value = _value;
    }
}
