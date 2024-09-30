// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CaveiraDIO is ERC721{

    struct Caveira{
        string name;
        uint level;
        string img;
    }

    Caveira[] public Caveiras;
    address public gameOwner;

    constructor () ERC721 ("CaveiraDIO", "PKD"){
        gameOwner = msg.sender;
    } 

    modifier onlyOwnerOf(uint _monsterId) {
        require(ownerOf(_monsterId) == msg.sender,"Apenas o dono pode batalhar com esta Caveira");
        _;
    }

    function battle(uint _attackingCaveira, uint _defendingCaveira) public onlyOwnerOf(_attackingCaveira){
        Caveira storage attacker = Caveiras[_attackingCaveira];
        Caveira storage defender = Caveiras[_defendingCaveira];

         if (attacker.level >= defender.level) {
            attacker.level += 2;
            defender.level += 1;
        }else{
            attacker.level += 1;
            defender.level += 2;
        }
    }

    function createNewCaveira(string memory _name, address _to, string memory _img) public {
        require(msg.sender == gameOwner, "Apenas o dono do jogo pode criar novas Caveiras");
        uint id = Caveiras.length;
        Caveiras.push(Caveira(_name, 1,_img));
        _safeMint(_to, id);
    }
}
