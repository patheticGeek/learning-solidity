// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract MoneyMovingContract {
    mapping(address => uint256) public balances;
    address payable wallet;
    
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
    
    constructor(address payable _wallet) {
        wallet = _wallet;
    }
    
    receive() external payable {
        buyToken();
    }
    
    function buyToken() public payable {
        // buy a token
        balances[msg.sender] += 1;
        
        // send ether to wallet
        wallet.transfer(msg.value);
        
        // notify listners
        emit Purchase(msg.sender, 1);
    }
}
