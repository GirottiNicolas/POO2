import practicas.tp-empresa.concepto.ConceptoDeSueldo




class ReciboDeSueldo {

    // Este diseño, traeria informacion actual y no la del momento determinado en la cual se emite el recibo del empleado
    const nombreEmpleado

    const property fechaDeEmision = new Date()

    const conceptosARegistrar
  


    method liquidar(empleado){
        conceptosARegistrar.map({
                    concepto => new ConceptoDeSueldo(nombreItem = concepto.nombreItem(),
                                                     valor=concepto.valor())
        })
    }
}




