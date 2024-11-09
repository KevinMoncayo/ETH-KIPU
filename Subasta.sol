// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.7.0 <0.9.0; //Especifico el rango de versiones de solidity para mi contrato


contract Subasta {

    //Constructor que inicializa la subasta con los paràmetros necesarios para su funcionamiento.



    /*
    *Función para ofertar: Permite a los participantes ofertar por el artículo. 
    *Para que una oferta sea válida, debe ser mayor que la mayor oferta actual al menos en 5% y debe realizarse mientras la subasta este activa.
    *
    *Para verificar que la subasta esta activa, se va a usar un modificador.
    *
    */



    //Función para mostrar el ganador: muestra el ofertante ganador y el valor de la oferta ganadora.



    //Función para mostrar ofertas: muestra la lista de ofertantes y los montos ofrecidos.



    //Función para devolver depósitos: Al finalizar la subasta se devuelve el deposito a los ofertantes que no ganaron, descontando una comisión del 2% para el gas.



    //Manejo de depósitos: Las ofertas se deposita en el contrato y se almacenan con las direcciones de los ofertantes.



    //Evento para nueva oferta: se emite cuando se realiza una nueva oferta.



    //Evento para subasta finalizada: se emite cuando finaliza la subasta.



    //(Función avanzada)-> reembolso parcial: los participantes pueden retirar de su depósito el importe por encima de su última oferta durante el desarrollo de la subasta. 



    /*
    CONSIDERACIONES ADICIONALES:
    *Se debe utilizar modificadores cuando sea conveniente
    *Para superar a la mejor oferta, la nueva oferta debe ser superior al menos en 5%
    *El plazo de la subasta se extiende en 10 minutos con cada nueva oferta válida. Esta regla aplica siempre a partir de 10 minutos antes del plazo original de la subasta.
    de esta manera los competidores tienen suficiente tiempo para presentar una nueva oferta si así lo desean.
    *El contrato debe ser seguro y robusto, manejando adecuadamente los errores y las posibles situaciones excepcionales.
    *Se deben utilizar eventos para comunicar los cambios de estado de la subasta a los participantes.
    *La documentación del contrato debe de ser clara  y completa, explicando las funciones, variables y eventos.
    */
}