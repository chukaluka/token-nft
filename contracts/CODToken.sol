// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract CODToken is ERC20 {

    constructor() ERC20('CODToken', 'COD'){
        _mint(msg.sender, 1000000 * 10 ** 18);
       
    }

    function buyToken(address _recipient) public payable {
        uint256 tokenPerEth = 1000;
        uint256 amountTomint = (msg.value * tokenPerEth) / 10 **decimals();
        _mint(_recipient, amountTomint);
    }
}