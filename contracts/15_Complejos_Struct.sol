// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosStruct {
    
    struct Alumno {
        uint256 codigo;
        string nombre;
        uint256 edad;
    }

    Alumno[] private alumnos;

    function agregarAlumno(uint256 _codigo, string memory _nombre, uint256 _edad) public {
        alumnos.push(Alumno(_codigo, _nombre, _edad));
    }

    //se puede devolver mas de un resultado
    function mostrarAlumnov1(uint256 _indice) public view returns(uint256 Codigo, string memory Nombre) {
        //return(265585, "Fabricio")
        return(alumnos[_indice].codigo, alumnos[_indice].nombre);
    }

    function mostrarAlumnov2(uint256 _indice) public view returns(uint256 Codigo, string memory Nombre, uint256 Edad) {
        Alumno memory al = alumnos[_indice];
        return(al.codigo, al.nombre, al.edad);
    }

    function mostrarAlumnov3(uint256 _indice) public view returns(Alumno memory alumno) {
        require(_indice < alumnos.length, "Posicion Incorrecta");
        Alumno memory al = alumnos[_indice];
        return(al);
    }

    function buscarAlumno(uint256 _codigo) public view returns(uint256 Codigo, string memory Nombre, uint256 Edad){

         for(uint i=0; i < alumnos.length; i++) {
            Alumno memory al = alumnos[i];

            if(al.codigo == _codigo) {
                return(al.codigo, al.nombre, al.edad);
            }
        }   

        //si llega aca no encuentra con ese codigo
        revert("Alumno no encontrado"); //parecido a excepcion en java
    }
}