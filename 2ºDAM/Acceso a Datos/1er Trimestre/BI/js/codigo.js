// Definición de variables para construir la consulta SQL
var peticion = "SELECT ";
var columnas = " * ";
var desde = " FROM ";
var tabla = " ";
var condiciones = " ";
var limite = " LIMIT 10000";

// Acciones a realizar cuando el documento esté listo
$(document).ready(function(){

    // Cargar opciones de tablas al iniciar la página
    $("#seleccionatabla").load("php/cargatablas.php");
    
    // Llamar a la función para mostrar resultados de la tabla
    resultadostabla();
    
    // Acción al cambiar la selección de la tabla
    $("#seleccionatabla").change(function(){
        tabla = $(this).val();
        resultadostabla();
        $("#seleccionacampos").load("php/cargacampos.php?tabla="+tabla);
    })

    // Acción al cambiar la selección de campos
    $("#seleccionacampos").change(function(){
        seleccionado = [];
        
        // Obtener campos seleccionados
        $('input[name="seleccionacampos"]').each(function(){
            if($(this).is(":checked")) {
                seleccionado.push($(this).val());
            }
        })
        
        console.table(seleccionado);
        
        // Construir la lista de columnas con sus alias
        columnas = "";
        for(var i = 0; i < seleccionado.length; i++){
            columnas += seleccionado[i]+" ";
            if($("input[alias='"+seleccionado[i]+"']").val() != ""){
                columnas += "AS '"+$("input[alias='"+seleccionado[i]+"']").val()+"' ";
            }
            columnas += ",";
        }
        columnas = columnas.slice(0,-1);
        resultadostabla();
        
        // Introducir condiciones en la interfaz
        $("#seleccionacondiciones").html("");
        for(var i = 0; i < seleccionado.length; i++){
            $("#seleccionacondiciones").append('<tr class="condicion"><td>'+seleccionado[i]+' : </td><td> <input type="text" name="" class="nuevacondicion" campo="'+seleccionado[i]+'"></td></tr>');
        }
        
        // Introducir alias en la interfaz
        $("#seleccionaalias").html("");
        for(var i = 0; i < seleccionado.length; i++){
            $("#seleccionaalias").append('<tr class="alias"><td>'+seleccionado[i]+' : </td><td> <input type="text" name="" class="nuevoalias" alias="'+seleccionado[i]+'" campo="'+seleccionado[i]+'"></td></tr>');
        }
    })

    // Acción al escribir en los campos de condiciones
    $(document).on("change",".nuevacondicion",function(){
        condiciones = " WHERE ";
        $(".nuevacondicion").each(function(){
            if($(this).val() != ""){
                condiciones += $(this).attr('campo')+" LIKE '%"+$(this).val()+"%' &";
            }
        })
        condiciones = condiciones.slice(0,-1);
        resultadostabla();
    })
    
    // Acción al escribir en los campos de alias
    $(document).on("change",".nuevoalias",function(){
        seleccionado = [];
        $('input[name="seleccionacampos"]').each(function(){
            if($(this).is(":checked")) {
                seleccionado.push($(this).val());
            }
        })

        // Introducir alias en la interfaz
        columnas = "";
        for(var i = 0; i < seleccionado.length; i++){
            columnas += seleccionado[i]+" ";
            if($("input[alias='"+seleccionado[i]+"']").val() != ""){
                columnas += "AS '"+$("input[alias='"+seleccionado[i]+"']").val()+"' ";
            }
            columnas += ",";
        }
        columnas = columnas.slice(0,-1);
        resultadostabla();
    })
    
    // Acción al cambiar el límite
    $("#limite").change(function(){
        limite = " LIMIT "+$(this).val()+" ";
        resultadostabla();
    })
})

// Función para mostrar la consulta SQL y los resultados de la tabla
function resultadostabla(){
    $("#sql").text(peticion+columnas+desde+tabla+condiciones+limite)
    $("#resultadostabla").load("php/resultadostabla.php?sql="+encodeURI(peticion+columnas+desde+tabla+condiciones+limite))
}
