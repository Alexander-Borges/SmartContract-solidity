// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18; // stating our version 

contract SimpleStorage {
    // favorite number is initialized to 0 if no value is given
    uint256 myFavoriteNumber;

    //uint256[] lostOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;
    // Person public pat = Person({favoriteNumber:7,name: "Pat"});
    // Person public mariah = Person({favoriteNumber:16,name: "Mariah"});
    // Person public jon = Person({favoriteNumber:16,name: "Jon"});

    // Chealsea -> 232
    mapping (string => uint256) public nameToFavoriteNumner;
    
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        
    }



    // view - read state from the blockchain, pure 
    // view disallows any modification of the state
    // blue buttons don't spend gas on a transaction
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }


    // calldata is temporary variables that cannot be modified
    // memeory is temporary variables that can be modified
    // storage is permanent variables that can be modified
    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumner[_name] = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138

    //0x608060405234801561001057600080fd5b5060e38061001f6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c80636057361d14602d575b600080fd5b60436004803603810190603f91906085565b6045565b005b8060008190555050565b600080fd5b6000819050919050565b6065816054565b8114606f57600080fd5b50565b600081359050607f81605e565b92915050565b6000602082840312156098576097604f565b5b600060a4848285016072565b9150509291505056fea2646970667358221220d52475ec91f73d3d2e3885514a2f9c1178c6a8e8520c8404258e5210e58e1e0864736f6c63430008120033
    
    // uint and int can be spcified how many bits or bites we will use
    // Basic Types: boolean, uint(unsigned interger - positive whole number), int, address, bytes
    //bool hasFavoirteNumber = true;
    // default is 256
    //string favoriteNumberInText = 'eighty-eight';
    //int favoriteInt = -88;
    //address myAddress = 0xdC416A225b40F5c9fc578ac7635C7Dc45515907A;
    //bytes32 favoriteBytes32 = 'cat'; // represent the hex of the byte - 32 is the largest//



}