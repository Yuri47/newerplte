


$("button#1").click(function() {
            //$("p").hide()
            //$("h1.dois").show("slow")
            

$.ajax({
  method: "GET",
  url: "{{ route('editclient') }}",
  data: { name: $('input#nameEdit').val(), 
          fone: $('input#foneEdit').val(), 
          address: $('input#addressEdit').val(), 
  id: $('input#id').val() 
}
})
  .done(function( msg ) {
    //alert( "Data Saved: " + msg );

var object = msg; //pega o objeto msg que vem da função ajax do servicecontroller
 
$("button#1").text(msg["name"] );
$("input#textFinal").val(msg["name"]);

  });

 
        });
 