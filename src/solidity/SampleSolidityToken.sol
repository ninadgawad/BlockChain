pragma solidity ^0.6.0;

// This contract represents a simple token which track of the total supply and balance of the token for each address

// The token has a name, symbol, and total supply
// It also has a function that allows transfers of the token between addresses

contract SampleSolidityToken  {
    // Token details
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // Mapping from address to balance
    mapping(address => uint256) public balanceOf;

    // Event that is emitted when the balance of an address changes
    event BalanceChanged(address indexed _owner, uint256 _balance);

    // Constructor function that is called when the contract is created
    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) public {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
    }

    // Function that allows transfers of the token between addresses
    function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit BalanceChanged(_to, balanceOf[_to]);
    }
}
