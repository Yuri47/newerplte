@extends('layouts.padrao')


@section('content')

 

 
<h1>Cadastrar</h1>
 <vc-clients></vc-clients>
 
 
 
  <form action="#" method="POST" role="form">
	<legend> </legend>

	<div class="form-group">
		<label for="">Name</label>
		<input type="text" class="form-control" id="" placeholder=" Name"  v-model="ist.name">
	</div>
	<div class="form-group">
		<label for="">Fone</label>
		<input type="text" class="form-control" id="" placeholder="Fone"   v-model="ist.fone">
	</div>
	<div class="form-group">
		<label for="">Address</label>
		<input type="text" class="form-control" id="" placeholder="Address"   v-model="ist.adress">
	</div>

	

	<button type="submit" class="btn btn-primary">Submit</button>
</form>
   


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
@stop
