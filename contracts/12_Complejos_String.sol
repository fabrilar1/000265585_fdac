// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosString {
    string private saludo = "Hola";    

    function cambiarSaludo(string memory _saludo) public {
        saludo = _saludo;
    }

    function devolverSaludo() public view returns (string memory) {
        return saludo;
    }
    
    function concatenar(string memory _texto) public {
        //saludo = string (abi.encodePacked(saludo, " ", _texto)); //no se utiliza como java saludo = saludo + nuevaCadena
        saludo = string.concat(saludo, " ", _texto);
    }
}