// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;

    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function operar() public view {
        require(pausado == false, "El contrato esta pausado");
        console.log("Aqui va toda la logica de la funcion a operar");
    }

    
}