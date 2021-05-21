// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    
    function mint() public {
        balances[tx.origin]++;
    }
}

contract CrossTalkContract {
    address payable wallet;
    address public token;
    
    constructor(address payable _wallet, address _token) {
        wallet = _wallet;
        token = _token;
    }
    
    receive() external payable {
        buyToken();
    }
    
    function buyToken() public payable {
        // mint a token
        ERC20Token(address(token)).mint();
        
        // send ether to wallet
        wallet.transfer(msg.value);
    }
}
