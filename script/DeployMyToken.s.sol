//SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import {Script} from "../lib/forge-std/src/Script.sol";
import {MyToken} from "../src/MyERC20Token.sol";
 

contract DeployMyToken is Script{
MyToken myToken;

function run() external returns(MyToken){
    vm.startBroadcast();
    myToken = new MyToken(100000 ether);
    vm.stopBroadcast();
    return myToken;

}



}