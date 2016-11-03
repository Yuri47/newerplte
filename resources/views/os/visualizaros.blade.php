
@extends('layouts.app')

@section('htmlheader_title')
  
@endsection


@section('main-content')

 



<h1>OS Nº: {{$OS->id}} - {{ date('d/m/Y - H:s', strtotime($OS->created_at)) }}</h1> <a href="{{$OS->id}}/print" target="_blank"> <button  type="button" class="btn btn-success">Imprimir OS</button></a>

 <div class="success">
<h3 >Estado: {{$OS->state}}</h3>
</div>
 




<hr>
<div class="row">
  <div class="col-md-6">
  	<h3>Cliente</h3>
	<p>Nome: {{$clientData->name}}</p>
	<p>Telefone: {{$clientData->fone}}</p>
	<p>Endereço: {{$clientData->address}}</p>

	<h3>Equipamento</h3>
	<div class="row">
  <div class="col-md-6">
  <p>Tipo: {{$equipamentData->type}}</p>
  <p>Modelo {{$equipamentData->design}}</p>
  </div>

  <div class="col-md-6">
  <p>Marca: {{$equipamentData->mark}}</p>
  <p>Nº de Série: {{$equipamentData->serialNumber}}</p>
  </div>
</div>
<div class="row">
<div class="col-md-6">
  <p>Problema: {{$equipamentData->problem}} </p>
  <p>Observações: {{$equipamentData->observations}}</p>
  </div> </div>



  <div class="row">
<div class="col-md-12">
  <h3>Comentários</h3>

   


    @foreach ($comments as $c)
    <p> <div class="well well-small">
       {{$c->name}} -  {{ date('d/m/Y - H:s', strtotime($c->created_at)) }}
      <div class="well well-small">  {{$c->comment}}  </div>
    </div> </p>
    @endforeach



<form action="/createcomment" method="POST" role="form">
  

  <div class="form-group">
    <input type="hidden" name="_token" value="{{csrf_token()}}">
    <input type="hidden" name="name" value="{{ Auth::user()->name }}">
    <input type="hidden" name="os_id" value="{{$OS->id}}">
    <input type="hidden" name="state" value="{{$OS->state}}">
    <label for="">Comentário</label>
    <input type="text" class="form-control"   name="comment" placeholder="Input field">
  </div>
 
  <button type="submit" class="btn btn-primary">Enviar</button>
  
</form>
 
  
  </div> </div>

  </div>


@if ($OS->state == 'PRONTO')

<h3>Relatório</h3>
<p>Técnico: {{$OS->technical}}</p>
<p>Laudo final: {{$OS->finalReport}}</p>
<p>Preço: R$ {{$OS->price}},00</p>

<h3>Retirada</h3>

 
<form action="/collectEquip" method="POST">
<input type="hidden" name="_token" value="{{csrf_token()}}">
<input type="hidden" name="os_id" value="{{$OS->id}}">
<input type="hidden" name="price" value="{{$OS->price}}">
<input type="hidden" name="description" value="{{$OS->finalReport}}. OS: {{$OS->id}}">
<input type="hidden" name="type" value="place">



 

 <div class="col-md-3"> 
   <div class="form-group">
      <label for="">Nome</label>
      <input type="text" class="form-control" id="" name="name" placeholder="Nome"> 
  </div>
 </div>
 <div class="col-md-3"> 
   <div class="form-group">
      <label for="">Documento</label>
      <input type="text" class="form-control" id="" name="doc" placeholder="Numero do Documento"> 
  </div>
 </div>
  <div class="col-md-3">
 <button class="btn btn-success" type="submit">Retirar</button> </div>
</form>
 

@elseif ($OS->state == 'ANALISE' || $OS->state == 'RECEBIDO')
 

<form action="/updateOs" method="POST">
<input type="hidden" name="_token" value="{{csrf_token()}}">
<input type="hidden" name="id" value="{{$OS->id}}">


  <div class="col-md-6">
  Técnico: <select class="form-control" name="technical">
  <option value="Yuri Alexsander">Yuri Alexs</option>
  <option value="Bob Marley">Bob Marley</option>
   
</select></div> 

 <div class="col-md-6"> 
   <div class="form-group">
      <label for="">Laudo Final</label>
      <input type="text" class="form-control" id="" name="finalReport" placeholder="Input field"> 
  </div>
 </div>
 <div class="col-md-6"> 
   <div class="form-group">
      <label for="">Valor</label>
      <input type="text" class="form-control" id="" name="price" placeholder="Input field"> 
  </div>
 </div>
  <div class="col-md-6">
 <button class="btn btn-success" type="submit">Pronto</button> </div>
</form>

 
@elseif ($OS->state == 'ENTREGUE')
  <div class="col-md-6">
    <h3>Relatório</h3>
<p>Técnico: {{$OS->technical}}</p>
<p>Laudo final: {{$OS->finalReport}}</p>
<p>Preço: R$ {{$OS->price}},00</p>
<h3>Retirada</h3>
 @foreach ($collect as $col)
   <p>Quem retirou: {{$col->name}}</p>
<p>Documento: {{$col->doc}}</p>
<p>Data:  {{ date('d/m/Y - H:s', strtotime($col->created_at)) }} </p>
    @endforeach
</div>
 @endif







</div>





 
@endsection