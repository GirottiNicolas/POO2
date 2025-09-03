import practicas.tp-empresa.concepto.ConceptoDeSueldo




class ReciboDeSueldo {

    // Este diseño, traeria informacion actual y no la del momento determinado en la cual se emite el recibo del empleado
    const nombreEmpleado

    const property fechaDeEmision = new Date()

    const conceptos
    
    method getConceptos(){
        return conceptos
    }

    method getNombreEmpleado(){
        return nombreEmpleado
    }

    method liquidar(empleado){
        conceptos.map({
                    concepto => new ConceptoDeSueldo(nombreItem = concepto.getNombreItem(),
                                                     valor=concepto.getValor())
        })
    }
}




