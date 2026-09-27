// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract DatosComplejos {
    string private saludo = "hola";
    bytes public datos; 

    function cambiarSaludo(string memory _saludo) public {
        saludo = _saludo;
    }

    function devolverSaludo() public view returns (string memory) {
        return saludo;
    }

    function guardarComoBytes(bytes memory _datos) public {
        datos = _datos;
    }

    function guardarComoTexto(string memory texto) public {
        datos = bytes(texto);
    }

    function obtenerDatosComoString() public view returns (string memory) {
        return string(datos);
    }
} 