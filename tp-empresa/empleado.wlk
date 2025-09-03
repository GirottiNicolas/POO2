import practicas.tp-empresa.empresa.Empresa
import practicas.tp-empresa.concepto.ConceptoDeSueldo



class Empleado {
    const property nombre
    const property direccion
    const fechaNac 
    var estadoCivil
    var sueldoBasico
    const conceptosDeSueldo = #{}


    method edad(){
        const fechaActual = new Date()
        return fechaActual.year() - fechaNac.year()
    }

    method sueldoNeto(){
        return self.sueldoBruto() - self.retenciones()
    }

    
    method obraSocial(){
        return self.porcentajeDeSueldo(10)
    }

    method retenciones(){
        return self.obraSocial() + self.aportesJubilatorios()
    }

    method porcentajeDeSueldo(porcentaje){
        return (self.sueldoBruto() * porcentaje) / 100
    }



    method registrarConceptos(){
        self.prepararNuevoMes()
        self.registrarConceptosBasicos()
        self.registrarConceptosAdicionales()
        
    }


    method prepararNuevoMes(){
        conceptosDeSueldo.clear()
    }
   

    method registrarConceptosBasicos(){
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Sueldo Bruto", valor = self.sueldoBruto()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Sueldo Neto", valor = self.sueldoNeto()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Obra social", valor = self.obraSocial()))
        conceptosDeSueldo.add(new ConceptoDeSueldo(nombreItem = "Retenciones", valor = self.retenciones()))

    }


    method registrarConceptosAdicionales()

    method aportesJubilatorios()

    method sueldoBruto()

  

}