// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0; //Especifico el rango de versiones de solidity para mi contrato

contract HelloWorld {

    string nombre;
    address direccion;
    string mensaje;
    uint256 fecha;

    constructor(string memory _nombre) {
        nombre = _nombre;
        direccion = msg.sender;
        mensaje = "Contrato creado!";
        fecha = block.timestamp;
    }

    function verUltimaVisita() external view returns (string memory, address, string memory, uint256){
        return (nombre,direccion,mensaje,fecha);
    }

    function escribirVisita(string memory _nombre, string memory _mensaje) external {
        nombre = _nombre;
        direccion = msg.sender;//Existe tx.origin para conocer quien es el origen de la transacción desde el inicio
        mensaje = _mensaje;
        fecha = block.timestamp;
        //msg.value -> su medida es un wei (una pequeña porción de ether)
        revert("the bid finished");//Para mandar un mensaje de error y revertir la transacción
    }
    
}