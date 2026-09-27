// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos{

    uint256 private cantidad =20;

    //declarar un evento 
    event CambioValorCantidad(address invocador, uint anteriorValor, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public {
        
        emit CambioValorCantidad(msg.sender, cantidad, _cantidad);
        cantidad = _cantidad;
    }

    function obtenerCantidad() public view returns(uint256) {
        return cantidad;
    }
}