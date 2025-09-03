import practicas.tp-empresa.concepto.ConceptoDeSueldo




class ReciboDeSueldo {

    const nombreEmpleado
    const direccion
    const sueldoBruto 
    const sueldoNeto 

    const property fechaDeEmision = new Date()

    const conceptos
    
    method getConceptos(){
        return conceptos
    }

    method getNombreEmpleado(){
        return nombreEmpleado
    }

    method getSueldoBruto(){
        return sueldoBruto
    }

    method getSueldoNeto(){
        return sueldoNeto
    }

    method getDireccion() {
        return direccion
    }

    
    method liquidar(empleado){
        conceptos.map({
                    concepto => new ConceptoDeSueldo(nombreItem = concepto.getNombreItem(),
                                                     valor=concepto.getValor())
        })
    }

    method getDesgloceDeConceptos(){
        return conceptos.map({
                    concepto => concepto.getNombreItem() + " -> $ " + concepto.getValor()
        })  
    }
}




