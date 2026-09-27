// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Sender {
    uint256 private cantidad = 20;
    address public cuentaInicial;


    constructor(uint256 _cantidad) {
        cantidad = _cantidad;
        cuentaInicial = msg.sender; //devuelve la dirección con que interactúa la función
    }

    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        //cuentaInicial = msg.sender;
    }

    function obtenerCantidad() public view returns(uint256) {
        return cantidad;
    }
}