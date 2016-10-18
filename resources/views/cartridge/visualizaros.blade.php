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
 <h2> Valor: R$ <p id="price">{{$totalPrice}}</p></h2>
  @if ($osCart->pay == 'yes')
<h2>Pago: Sim</h2>
@elseif ($osCart->pay == 'no')
<h2>Pago: Não</h2>
@endif

 
 
<h3>Cliente</h3>
<p>Nome: {{$clientData->name}}</p>
<p>Telefone: {{$clientData->fone}}</p>
<p>Endereço: {{$clientData->address}}</p>
 


 
 
  <h3>Cartuchos</h3>
  
<div class="row">
@foreach ($cartridge as $cart)
<div class="col-md-5   bg-info cart" id="moldura{{$cart->id}}">
<div class="col-md-5  ">

<p style="text-transform:uppercase">Marca: {{$cart->mark}}</p>
<p>Numero de série: {{$cart->serialNumber}}</p>
<input type="hidden" name="" id="idCartridge{{$cart->id}}" value="{{$cart->id}}">
<p id="estado{{$cart->id}}">Estado: <div id="textEstado{{$cart->id}}"></div></p>

</div>
<div class="col-md-5  ">
<p>Numero: {{$cart->number}}</p>
<p>Valor: {{$cart->price}}</p>

</div>
<div id="botoes{{$cart->id}}">
<button type="button" class="btn btn-primary" id="bom{{$cart->id}}">Bom</button>
<button type="button" class="btn btn-success" id="Cheio{{$cart->id}}">Já Cheio</button>
<button type="button" class="btn btn-danger" id="Entupido{{$cart->id}}">Entupido</button>
</div>
</div>
 

@endforeach

</div>
 

<button type="button" class="btn btn-primary" id="botaoPronto">PRONTO</button>
 

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
var clickTeste = 0;
 
$("button#botaoPronto").click(function() {
  
 clickTeste = clickTeste + 1;
 console.log(clickTeste);
   $("div#clickTeste").text(clickTeste);
   if (count == clickTeste) {
  console.log("chegou");
}
        }); //fim da função  





@foreach ($cartridge as $cart)
count++
$("div#count").text(count);


$("p#estado{{$cart->id}}").hide();


$("button#bom{{$cart->id}}").click(function() {
            
  clickTeste = clickTeste + 1;           

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
  if (count == clickTeste) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão bom

$("button#Cheio{{$cart->id}}").click(function() {
            
 clickTeste = clickTeste + 1;     

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
  if (count == clickTeste) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão Cheio

$("button#Entupido{{$cart->id}}").click(function() {
            
 clickTeste = clickTeste + 1;             

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
  if (count == clickTeste) {
    $("button#botaoPronto").show();
  console.log("chegou");
}
        }); //fim da função do botão Entupido
 
   @endforeach





</script>


<!--====  End of JAVASCRIPT  ====-->
@endsection