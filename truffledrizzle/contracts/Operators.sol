pragma solidity ^0.5.0;

contract Lesson2_4 {

    // unidades de medida -> ether, sazbo, finney, wei (gas)
    bool isEqual = (1 ether == 5000 finney);

    // time units -> seconds, minutes, hours, days, weeks
    bool isTime = (1 == 1 seconds);
    bool ishour = (1 hours == 60 minutes);


    function test() public {
        // Available global variables
        // block
        block.number;
        block.difficulty;
        block.coinbase ();

        // messages
        msg.sender;
        msg.value;

        // transaction
        tx.origin;
        tx.gas;
    }

    function calcs(uint _a, uint _b) public pure returns (uint o_sum, uint o_product) {
        o_sum = _a + _b;
        o_product = _a * _b;
    }

    // Arithmetic operators + - * / % **(exponent)

    uint a = 2;
    uint b = 3;

    uint c = a ** b; // c will be 8 = 2 elevado a la 3

    // logical operators
    // not !
    // &&
    // ||
    // ==
    // !=

    // Bitwise operators (se usan para tipos de datos bytes)
    // & (and) | (or) ^ (exclusive or) ~ (negation) >> (right shift) << (left shift)

    bytes1 contractValue = 0x02 | 0x01;

    // Conditionals
    function conditionals() public pure {

        if (a == 2) {
            // run this
        } else {
            // or run this
        }

        while (a >= 0) {
        }

        do {
        } while (a >= 0);

        for (uint i = 0; i <= 50; i++) {
            // code
        }
    }
}
