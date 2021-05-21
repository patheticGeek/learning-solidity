// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract EnumContract {
    enum State { Waiting, Ready, Active }
    State public state = State.Waiting;
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}
