




class ReciboDeSueldo {
    
    var empleado

    var fechaDeEmision = new Date()

    var desgloceDeConceptos = []

    method nombreEmpleado(){
        return empleado.nombre()
    }

    method direccion(){
        return empleado.direccion()
    }

    method sueldoBruto(){
        return empleado.sueldoBruto()
    }

    method sueldoNeto(){
        return empleado.sueldoNeto()
    }

    method desgloceDeConceptos(){
        return desgloceDeConceptos
    }

    method liquidar(){
        desgloceDeConceptos = empleado.conceptosDeSueldo()
    }

}




