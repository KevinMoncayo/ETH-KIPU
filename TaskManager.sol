// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0; //Especifico el rango de versiones de solidity para mi contrato

/* Este ejercicio pertenece a la clase 7.
*
*
*
*/

//Defino el contrato, recordar el simil entre contrato y clase.
contract TaskManager {

    //Primero defino los estados que puede tener una tarea. Esto se hace a través de un enum
    enum TaskStatus {
        Pending,
        InProgress,
        Done
    }

    //Una tarea tiene varias propiedades, la mejor forma de definirlo es a través de un struct
    struct Task {
        uint256 id;
        string title;
        TaskStatus status;
    }

    //es preciso crear un log al momento de crear una tarea para poder interactuar con la tarea creada. Esto se hace a través de un event.
    event TaskCreated (uint256 indexed id, string title);//indexted sirve para buscar el titulo a través del id

    //Defino una lista que almacene todas las tareas que voy creando
    Task[] public tasks;
    //Defino una variable que me almacene el número de todas las tareas que voy creando
    uint256 public taskCounter;
    //Defino una constante que va a almacenar el número máximo de tareas que puedo crear
    uint256 constant MAX_TASK = 10;

    



}

