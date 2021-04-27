$(document).ready(() => {
    $(".datos").click(function(){
        let id = $(this).attr("id");
        $.ajax({
            url: "candidato",
            method: "POST",
            data: {
                idCandidato: id
            },
            success: function(data){
                $("#nombre").html(data.nombre)
                $("#telefono").html(data.telefono)
                $("#correo").html(data.correo)
                $("#curp").html(data.curp)
                $("#idCandidato").val(data.idCandidato)

            },
            error: function(xhr, statusText){
                console.log(statusText)
            }
        })
        $.ajax({
            url: "puntaje",
            method: "POST",
            data: {
                idCandidato: id
            },
            success: function(data){
                $("#PP_SolProb").html(data.PP_SolProb)
                $("#PP_TrabPres").html(data.PP_TrabPres)
                $("#PP_Etica").html(data.PP_Etica)
                $("#Fecha_Final").html(data.Fecha_Final)
                $("#Fecha_Inicio").html(data.Fecha_Inicio)
                $("#Hora_Final").html(data.Hora_Final)
                $("#Hora_Inicio").html(data.Hora_Inicio)

            },
            error: function(xhr, statusText){
                console.log(statusText)
            }
        })


    })
})