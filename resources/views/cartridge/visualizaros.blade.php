@extends('layouts.app')

@section('htmlheader_title')
  Visualizar OS
@endsection


@section('main-content')
   
 
 

<h1>Cartucho - {{$osCart->state}} - {{ date('d/m/Y - H:s', strtotime($osCart->created_at)) }}</h1>
@if(!empty($cash->price))
preço salvo: {{$cash->price}}
@endif
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

 

  <div class="f">
  <div class="col-md-3">
    @if ($osCart->state == "PRONTO")
<h3>Saída</h3>
@if(!empty($cash->price))
<p>Valor pago: {{$cash->price}}</p>

@if($cash->price != $totalPrice)
 
<p>Devolver: {{$cash->price - $totalPrice}}</p>
@endif

@endif
<p>Total: {{$totalPrice}}</p>


<form action="/changeStateCart" method="POST" role="form">
<!-- <form action="/tstCart" method="POST" role="form"> -->
<input type="hidden" name="_token" value="{{csrf_token()}}"> 
<input type="hidden" name="id" value="{{$osCart->id}}">
<input type="hidden" name="price" value="{{$totalPrice}}">
<input type="hidden" name="description" value="Recarga. OS: {{$osCart->id}}">
@if(empty($cash->price))
<input type="hidden" name="type" value="place">
@endif
@if(!empty($cash->price))
<input type="hidden" name="retireCash" value="{{$cash->price - $totalPrice}}">
<input type="hidden" name="type" value="place">
@endif
 
    <div class="input-group">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" id="buttonName">Repetir</button>
      </span>
      <input type="text" class="form-control" required placeholder="Nome de quem retira" id="inputName">
    </div><!-- /input-group -->
 <br>
<button type="submit" class="btn btn-primary" id="botaoPronto">Entregar</button>
</form>
@endif
 
  </div>
  </div>
</div>
 
 




  <h3>Cartuchos</h3>


<div class="row">
@foreach ($cartridge as $cart)
 
@if (empty($cart->state))
  <div class="col-sm-5 cart bg-info" id="moldura{{$cart->id}}"> <!-- Moldura -->
@elseif ($cart->state == "Bom")
  <div class="col-sm-5 cart bg-info"> <!-- Moldura -->
@elseif ($cart->state == "Cheio")
  <div class="col-sm-5 cart bg-success"> <!-- Moldura -->
@elseif ($cart->state == "Entupido")
  <div class="col-sm-5 cart bg-danger"> <!-- Moldura -->
@endif


  
 
    <div class="row">
      <div class="col-xs-8 col-sm-6">
        <p style="text-transform:uppercase">Marca: {{$cart->mark}}</p>
        <p>Numero de série: {{$cart->serialNumber}}</p>
        <input type="hidden" name="" id="idCartridge{{$cart->id}}" value="{{$cart->id}}">
        <p id="estado{{$cart->id}}">Estado: <div id="textEstado{{$cart->id}}"></div></p>
        @if (!empty($cart->state))
          <p>Estado: {{$cart->state}} </p>
        @endif
      </div>
      <div class="col-xs-4 col-sm-6">
        <p>Numero: {{$cart->number}}</p>
        <p id="campoValor{{$cart->id}}">Valor: {{$cart->price}}</p>
      </div>
    </div>
    @if (empty($cart->state))
    <div id="botoes{{$cart->id}}" style="text-align: center">
      <button type="button" class="btn btn-primary cart" id="bom{{$cart->id}}">Bom</button>
      <button type="button" class="btn btn-success cart" id="Cheio{{$cart->id}}">Cheio</button>
      <button type="button" class="btn btn-danger cart"  id="Entupido{{$cart->id}}">Entupido</button>
    </div>
    @endif
 


  </div> <!-- fim da Moldura -->
@endforeach
 </div> <!-- fim da div ROW -->





 
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




$("button#buttonName").click(function() {

  $("input#inputName").val(" {{$clientData->name}}" );

});
 
   





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