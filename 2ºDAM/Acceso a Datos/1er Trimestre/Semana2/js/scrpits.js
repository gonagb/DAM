$(document).ready(function(){
    // Tipo de texto
    $("#tipotexto").change(function(){
        $("#pagina").append("<"+$(this).val()+
        ">"+$(this).val()+
        "</"+$(this).val()+">")
    })
    // Selecciona una fuente
    $("#selectfont").change(function(){
        $("#pagina").append("<span style='font-family:"+$(this).val()+"'>"+$(this).val()+"</span>")
    })
    // Tamaño del Texto
    $("#fontsize").change(function(){
        $("#pagina").append("<span style='font-size:"+$(this).val()+"px'>"+$(this).val()+"</span>")
    })
    // Negrita en el Texto
    $("#bold").click(function(){
        $("#pagina").append("<span style='font-weight:bold'>Negrita</span>")
    })
    // Cursiva en el Texto
    $("#italic").click(function(){
        $("#pagina").append("<span style='font-style:italic'>Italic</span>")
    })
    // Subrayado en el Texto
    $("#underline").click(function(){
        $("#pagina").append("<span style='text-decoration:underline'>Subrayado</span>")
    })
     // Tamaño del Texto
     $("#fontcolor").change(function(){
        $("#pagina").append("<span style='color:"+$(this).val()+"'>"+$(this).val()+"</span>")
    })
    // Guardar el documento
    $("#guardar").click(function(){
        $.ajax({
            url: "guarda.php",
            data: {datos: $("#pagina").html(),nombredocumento:$("#documentname").val()},
            type: "POST",
            success: function(result){
                console.log("OK"+result)
            }
        });
    })
})