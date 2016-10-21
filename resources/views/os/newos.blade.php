@extends('layouts.app')

@section('htmlheader_title')
  Cadastrar OS
@endsection


@section('main-content')
   
 
  
<!-- :disabled="ist.id"> -->
 
<h1>Cadastrar Cliente</h1>   
 <vc-clients></vc-clients>
     <button type="clean" class="btn btn-primary" @click="limp" :disabled="!ist.id">Novo</button>



<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg1" :disabled="!ist.id">Editar</button>


<!--================================================
=            MODAL DE EDIÇÃO DO CLIENTE            =
=================================================-->

 



<div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
               
              <h1>Editar Cliente</h1>

              <div id="divEdit"> 
          
              {!!(string)Session::get('temp')!!}
        <!-- name: <input type="text" class="texto" id="valueText"> -->
                <div class="form-group">
                  <label for="">Nome</label>
                  <input type="text" class="form-control" autocomplete="off" autofocus required placeholder="Nome" id="nameEdit" name="name" v-model="ist.name" >

                </div>
             <div class="form-group">
                <label for="">Telefone</label>
                <input type="text" class="form-control phone" autocomplete="off" required placeholder="Telefone" id="foneEdit" name="fone"  v-model="ist.fone" >
            </div>
            <div class="form-group">
                <label for="">Endereço</label>
                <input type="text" class="form-control" autocomplete="off" required placeholder="Endereço" id="addressEdit" name="address"   v-model="ist.address"  >
            </div>
             <input type="hidden" name="id" id="id" value="@{{ist.id}}">
        <br><br>
        <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal" aria-label="Close">Fechar</button>
         <button id="1" class="btn btn-lg btn-primary">Editar</button> <br>


        <br>
        <br>
        <br>

        </div>

        <div  id="editSuccess">
        <div class="alert alert-success"  >
        <strong>Sucesso!</strong>
        O cliente <strong> @{{ist.name}}</strong>  foi alterado. 
        <br><br>
         </div>
        <button type="button" class="btn btn-lg btn-danger" data-dismiss="modal" aria-label="Close">Fechar</button>
       
</div>
            </div>
          </div>
</div>


<!--====  End of MODAL DE EDIÇÃO DO CLIENTE  ====-->

 
 
 <!--==========================================
 =            FORM DE NOVO CLIENTE            =
 ===========================================-->

 <div class="row">
  <div class="col-md-6"> 
  <form action="/newservice" method="POST" role="form">
     
      <input type="hidden" name="_token" value="{{csrf_token()}}">
      <input type="hidden" name="id" value="@{{ist.id}}">
      <div class="form-group">
        <label for="">Nome</label>
        <input type="text" autocomplete="off" class="form-control" id="" required placeholder="Nome"  name="name"  v-model="ist.name" :readonly="ist.id">
      </div>
      <div class="form-group">
        <label for="">Telefone</label>
        <input type="text" autocomplete="off" class="form-control phone" required placeholder="Telefone" name="fone" v-model="ist.fone" :readonly="ist.id"value="" />
          </div>
      <div class="form-group">  
        <label for="">Endereço</label>
        <input type="text" autocomplete="off" class="form-control" id="" required placeholder="Endereço" name="address"   v-model="ist.address" :readonly="ist.id" >
     
      </div>
      
    

     <!--  <button type="submit" class="btn btn-primary">Submit</button> -->
<!-- </form> -->
   

 <!--====  End of FORM DE NOVO CLIENTE  ====-->




<!--=====================================
=            FORM DE EQUIPAMENTOS       =
======================================-->

<!-- <form action="newservice" method="POST" role="form"> -->
  <legend>Equipamento</legend>
   
   
  <div class="form-group">
  <label for="">Tipo</label>
  <select name="type" id="inputType" class="form-control" required="required">
    <option value="NOTEBOOK">NOTEBOOK</option>
    <option value="COMPUTADOR">COMPUTADOR</option>
    <option value="IMPRESSORA">IMPRESSORA</option>
  </select>
  </div>
  


  <div class="form-group">
    <label for="">Nº de Série</label>
    <input type="text" autocomplete="off" class="form-control" id="" name="serialNumber" placeholder="Nº de Série">
  </div>

  <div class="form-group">
    <label for="">Marca</label>
    <input type="text" autocomplete="off" class="form-control" id="" name="mark" placeholder="Marca">
  </div>

  <div class="form-group">
      <label for="">Modelo</label>
      <input type="text" autocomplete="off" class="form-control" id="" name="design" placeholder="Modelo">
  </div>

  <div class="form-group">
      <label for="">Defeito Reclamado</label>
      <input type="text" autocomplete="off" class="form-control" id="" name="problem" placeholder="Defeito Reclamado">
  </div>

  <div class="form-group">
      <label for="">Observações</label>
      <input type="text" autocomplete="off" class="form-control" id="" name="observations" placeholder="Observações"> 
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
   
</div>
  
<!--====  End of FORM DE EQUIPAMENTOS  ====-->
















 
  <!-- FIM DA DIV CONTAINER -->











<!--================================
=            JAVASCRIPT            =
=================================-->






<script src="/js/main.js"></script>
 
  <script src="/js/jquery.min.1.11.3.js"></script>
  <script src="/js/jquery.mask.min.js"></script>
 
  
<script type="text/javascript" >

var maskBehavior = function (val) {
  return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
},
options = {onKeyPress: function(val, e, field, options) {
        field.mask(maskBehavior.apply({}, arguments), options);
    }
};

$('.phone').mask(maskBehavior, options);

 

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

