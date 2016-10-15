@extends('layouts.app')

@section('htmlheader_title')
  Cadastrar OS
@endsection


@section('main-content')
   
 
  
<!-- :disabled="ist.id"> -->
 
<h1>Cadastrar Cliente</h1>   
<!--  <vc-clients></vc-clients> -->
 <os-cartridge></os-cartridge>
      


<!--====  End of MODAL DE EDIÇÃO DO CLIENTE  ====-->

 

 <!--==========================================
 =            FORM DE NOVO CLIENTE            =
 ===========================================-->
  
 
    

     <!--  <button type="submit" class="btn btn-primary">Submit</button> -->
<!-- </form> -->
   

 <!--====  End of FORM DE NOVO CLIENTE  ====-->




<!--=====================================
=            FORM DE EQUIPAMENTOS       =
======================================-->

 















 
  <!-- FIM DA DIV CONTAINER -->











<!--================================
=            JAVASCRIPT            =
=================================-->






<script src="/js/main.js"></script>
<script src="/js/todo.js"></script>
  <script src="/js/jquery.min.1.11.3.js"></script>
 
  
<script type="text/javascript" >

 

$("div#editSuccess").hide()


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
$("div#divEdit").hide("slow")
$("div#editSuccess").show("slow")

  });

 
        });
 
   
  
</script>


<!--====  End of JAVASCRIPT  ====-->



@endsection

