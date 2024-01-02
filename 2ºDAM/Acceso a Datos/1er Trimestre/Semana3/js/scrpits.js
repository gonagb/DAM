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
    // Lista ordenada en el Texto
    $("#orderedlist").click(function(){
        $("#pagina").append("<ol><li></li></ol>")
    })
    // Lista desordenada en el Texto
    $("#unorderedlist").click(function(){
        $("#pagina").append("<ul><li></li></ul>")
    })
     // Alinear el texto: izquierda.
     $("#alignleft").change(function(){
        $("#pagina").append("<div style='text-align:left;"+$(this).val()+"'>"+$(this).val()+"</div>")
    })
     // Alinear el texto: centrado.
     $("#aligncenter").change(function(){
        $("#pagina").append("<div style='text-align:center;"+$(this).val()+"'>"+$(this).val()+"</div>")
    }) // Alinear el texto: derecha.
    $("#alignright").change(function(){
       $("#pagina").append("<div style='text-align:right;"+$(this).val()+"'>"+$(this).val()+"</div>")
   }) // Alinear el texto: justificado.
   $("#alignjustify").change(function(){
      $("#pagina").append("<div style='text-align:justify;"+$(this).val()+"'>"+$(this).val()+"</div>")
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