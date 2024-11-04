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

    //Ahora realizo un CRUD

    //Create task
    function createTask (string calldata _title) external{
        require(bytes(_title).length > 0, "empty title");
        if (taskCounter >= MAX_TASK){
            revert("maximum achieved");
        }
        tasks.push( Task(taskCounter, _title, TaskStatus.Pending) );
        emit TaskCreated(taskCounter, _title); 
        taskCounter ++;
    }
    //Read Task
    function readNextToDo() external view returns (Task memory){
        uint256 taskLen = tasks.length;
        for(uint256 i=0; i<taskLen; i++){
            if (tasks[i].status == TaskStatus.Pending) {
                return tasks[i];
            }
        }
        return tasks[taskLen--];//Esta instrucción se hace para devolver la última tarea por default.
    }
    
    /* ¿Que pasa si a través de la función updateTaskStatus intento a ingresar a una tarea que no existe? 
    * R: Se supone que estaría accediendo a una posición de memoria que no debería. 
    * Para evitar esto, se va a usar el siguiente modificador
    */  

    modifier validTaskIndex (uint256 _index){
        require (_index < tasks.length, "id does not exist");
        _;
    }
    
    //Update task
    function updateTaskStatus (uint256 _id, TaskStatus _status) external validTaskIndex(_id)  //Así se linkea el modificador
    {
        tasks[_id].status = _status;
    }
    //Delete task


}

