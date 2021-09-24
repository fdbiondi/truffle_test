pragma solidity ^0.5.0;

contract MyStringStore {

    // state variables
    string name = "manny";

    uint storedData = 34;

    bool atrueorfalsevalue = false;

    address wallet = 0x72ba773893b;

    string[] names;

    // se puede setear el numero de caracteres
    bytes code1;
    bytes32 code2;

    //structs definicion -> tipo de dato custom
    struct User {
        string firstName;
        string lastName;
    }

    enum userType {
        buyer, seller
    }

    // mappings -> diccionario o array objecto o asociativo
    mapping(address => uint) public balances;

    // condition before run functions - is a conditional
    modifier onlyData() {
        require(storedData >= 0);
        _;
    }

    function set(uint x) public {
        storedData = x;
    }

    event Sent(address from, address to, uint storedData);

    string public myString = "Hello World";

    function set(string memory x) public {
        myString = x;
    }
}
