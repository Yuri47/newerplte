@extends('layouts.app')

@section('htmlheader_title')
  Visualizar OS
@endsection


@section('main-content')
   
 
{{$osCart}}
{{$clientData}}
{{$cartridge}}
{{$totalPrice}}

<h1>Cartucho - {{$osCart->state}} - {{ date('d/m/Y - H:s', strtotime($osCart->created_at)) }}</h1>
 <h2> <div id="price"></div></h2>
  @if ($osCart->pay == 'yes')
<h2>Pago: Sim</h2>
@elseif ($osCart->pay == 'no')
<h2>Pago: Não</h2>
@endif

 <div class="row">
  <div class="col-md-6">
<h3>Cliente</h3>
<p>Nome: {{$clientData->name}}</p>
<p>Telefone: {{$clientData->fone}}</p>
<p>Endereço: {{$clientData->address}}</p>


  </div>
  <div class="col-md-6">
    @if ($osCart->state == "PRONTO")
<h3>Saída</h3>
<p>Total: {{$totalPrice}}</p>

<form action="/changeStateCart" method="POST" role="form">
<input type="hidden" name="_token" value="{{csrf_token()}}"> 
<input type="hidden" name="id" value="{{$osCart->id}}">

 <div class="form-group">
    <label for="">Nome</label>
    <input type="text" class="form-control" id="" placeholder="Input field">
  </div>
<button type="submit" class="btn btn-primary" id="botaoPronto">Entregar</button>
</form>
@endif

 



  </div>
</div>
 
 
 


 
 
  <h3>Cartuchos</h3>
  
<div class="row">
@foreach ($cartridge as $cart)
@if (empty($cart->state))
<div class="col-md-5   bg-info cart" id="moldura{{$cart->id}}">
@elseif ($cart->state == "Bom")
<div class="col-md-5   bg-info cart"  >
@elseif ($cart->state == "Cheio")
<div class="col-md-5   bg-success cart"  >
@elseif ($cart->state == "Entupido")
<div class="col-md-5   bg-danger cart"  >
@endif
<div class="col-md-5  ">

<p style="text-transform:uppercase">Marca: {{$cart->mark}}</p>
<p>Numero de série: {{$cart->serialNumber}}</p>
<input type="hidden" name="" id="idCartridge{{$cart->id}}" value="{{$cart->id}}">
<p id="estado{{$cart->id}}">Estado: <div id="textEstado{{$cart->id}}"></div></p>
@if (!empty($cart->state))
<p>Estado: {{$cart->state}} </p>
@endif


</div>
<div class="col-md-5  ">
<p>Numero: {{$cart->number}}</p>
<p id="campoValor{{$cart->id}}">Valor: {{$cart->price}}</p>

</div>
@if (empty($cart->state))
<div id="botoes{{$cart->id}}">
<button type="button" class="btn btn-primary" id="bom{{$cart->id}}">Bom</button>
<button type="button" class="btn btn-success" id="Cheio{{$cart->id}}">Já Cheio</button>
<button type="button" class="btn btn-danger" id="Entupido{{$cart->id}}">Entupido</button>
</div>
@endif
</div>
 

@endforeach

</div>
 
@if ($osCart->state == "RECEBIDO")
<form action="/changeStateCart" method="POST" role="form">
<input type="hidden" name="_token" value="{{csrf_token()}}"> 
<input type="hidden" name="id" value="{{$osCart->id}}">
<button type="submit" class="btn btn-primary" id="botaoPronto">PRONTO</button>
</form>
@endif
 

<style type="text/css">
  
  .cart{
    margin: 5px;
  }


</style>




<!--================================
=            JAVASCRIPT            =
=================================-->






 
  <script src="/js/jquery.min.1.11.3.js"></script>
 
  
<script type="text/javascript" >

 

 

$("div#editSuccess").hide();
$("button#botaoPronto").hide();
var count = 0;
var countCart = 0;
var clickTeste = {{$totalPrice}};

$("div#price").text("Valor: R$ " + clickTeste + ",00")


 
   





@foreach ($cartridge as $cart)
 
if("{{$cart->state}}" == "" || "{{$cart->state}}" == null){
 
  count++
  console.log( count)
  console.log(countCart)
} 
console.log( count)
  console.log(countCart)

$("div#count").text(count);


$("p#estado{{$cart->id}}").hide();





// 
// FUNÇÃO BOM
// 
$("button#bom{{$cart->id}}").click(function() {
            
countCart = countCart + 1           

$.ajax({
  method: "GET",
  url: "{{ route('editStateCartridge') }}",
  data: { 
    id: $('input#idCartridge{{$cart->id}}').val(),
    estado: "Bom",
}
})
  .done(function( msg ) {

var object = msg; //pega o objeto msg que vem da função ajax do servicecontroller
 
 
$("p#pSucesso").text(msg["name"] );
// $("div#divEdit").hide("slow")
$("div#botoes{{$cart->id}}").hide("slow")
$("div#textEstado{{$cart->id}}").text(msg["estado"])
$("p#estado{{$cart->id}}").show("slow")

  });
  if (count == countCart) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão bom















// 
// FUNÇÃO CHEIO
// 
$("button#Cheio{{$cart->id}}").click(function() {
            
 countCart = countCart + 1 

 clickTeste = clickTeste - {{$cart->price}}
 $("div#price").text("Valor: R$ " + clickTeste + ",00")  
 $("p#campoValor{{$cart->id}}").text("Valor: 0")  


$.ajax({
  method: "GET",
  url: "{{ route('editStateCartridge') }}",
  data: { 
    id: $('input#idCartridge{{$cart->id}}').val(),
    estado: "Cheio",
}
})
  .done(function( msg ) {

var object = msg; //pega o objeto msg que vem da função ajax do servicecontroller
 
 
$("p#pSucesso").text(msg["name"] );
// $("div#divEdit").hide("slow")
$("div#botoes{{$cart->id}}").hide("slow")
$("div#textEstado{{$cart->id}}").text(msg["estado"])
$("p#estado{{$cart->id}}").show("slow")
document.getElementById('moldura{{$cart->id}}').className = 'col-md-5   bg-success cart';

  });
  if (count == countCart) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão Cheio












// 
// FUNÇÃO ENTUPIDO
// 
$("button#Entupido{{$cart->id}}").click(function() {
  countCart = countCart + 1 
            
 clickTeste = clickTeste - {{$cart->price}}
 $("div#price").text("Valor: R$ " + clickTeste + ",00")  
  $("p#campoValor{{$cart->id}}").text("Valor: 0")            

$.ajax({
  method: "GET",
  url: "{{ route('editStateCartridge') }}",
  data: { 
    id: $('input#idCartridge{{$cart->id}}').val(),
    estado: "Entupido",
}
})
  .done(function( msg ) {

var object = msg; //pega o objeto msg que vem da função ajax do servicecontroller
 
 
$("p#pSucesso").text(msg["name"] );
// $("div#divEdit").hide("slow")
$("div#botoes{{$cart->id}}").hide("slow")
$("div#textEstado{{$cart->id}}").text(msg["estado"])
$("p#estado{{$cart->id}}").show("slow")
document.getElementById('moldura{{$cart->id}}').className = 'col-md-5   bg-danger cart';

  });
  if (count == countCart) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão Entupido









 
   @endforeach

if (count == countCart) {
    $("button#botaoPronto").show();
  console.log("chegou");
}




</script>


<!--====  End of JAVASCRIPT  ====-->
@endsection