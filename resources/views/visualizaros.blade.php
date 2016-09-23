
@extends('layouts.app')

@section('htmlheader_title')
  
@endsection


@section('main-content')

{{$equipamentData}}
{{$clientData}}
{{$OS}}


<h1>OS Nº: {{$OS->id}}</h1>
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

  </div>
  <div class="col-md-6"><select class="form-control">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select></div>
</div>

 
@endsection