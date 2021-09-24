pragma solidity ^0.5.4;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    constructor() public payable {
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }

    modifier oneOwner {
        require(msg.sender == owner);
        _;
    }

    modifier isDeceased {
        require(deceased == true);
        _;
    }

    address[] wallets;

    mapping(address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public oneOwner {
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased {
        for (uint i=0; i<wallets.length; i++) {
            wallets[i].transfer(inheritance[wallets[i]]);
        }
    }

    function died() public oneOwner {
        deceased = true;
        moneyPaid();
    }

    /*
    Docs -> solidity in depth
        -> security consideration
        -> Common patterns
        -> Ethereum homestead documentation

    Code Style Guide -> doc style guide
        - Four spaces
        - Spaces over tab
        - Blocks of code: two blank lines after
        - No extra white spaces

        example:

        contract A {
            function spam() public;
            function ham() public;
        }


        contract B {
            function spam() public {
                spam(ham[1], Coin({name: "ham"}));
            }

            function ham() public {
                ...
            }
        }
    */
}
