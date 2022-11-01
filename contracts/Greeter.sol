pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {
	string private greeting = "Hello, World!";
	address private _owner;



	/*constructor() public {
		_owner = msg.sender;
	}

	modifier onlyOwner(){
		require(
			msg.sender == _owner,"Ownable: caller is not the owner"
			);
		_; 	// This line is where the function that is being modified will be called. If you put anything after this line, it will be run after the function body completes.
	}
	*/

	function greet() external view returns(string memory){
		return greeting;
	}

	function setGreeting(string calldata _greeting) external onlyOwner {
		greeting =_greeting;
	}

	/*function owner() public view returns(address){
		return _owner;
	}
	*/
}
