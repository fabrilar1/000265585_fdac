// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;
    bytes32 private saludo = hex"686F6C61";  
    address public direccion;  
    //string private cadena = "trabajo de blockchain";


    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function operar() public view {
        require(pausado == false, "El contrato esta pausado");
        console.log("Aqui va toda la logica del funcion operar");
    }

    function devolverSaludo() public view returns (bytes32) {
        return saludo;
    }

    function compararCadenas(bytes32 _textoHex) public pure {
        bytes32 temporalHex = keccak256(abi.encodePacked("trabajo de blockchain"));
        require (_textoHex == temporalHex, "no es el mismo trabajo"); 
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }

}