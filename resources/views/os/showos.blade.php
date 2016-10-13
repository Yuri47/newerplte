@extends('layouts.app')

@section('htmlheader_title')
  Ordem de Serviço Nº: {{$OS->id}}
@endsection


@section('main-content')

<style type="text/css">
  
  .os {
    max-width: 750px;
    padding: 15px;
    margin: 0 auto;
}
  .logo {
    padding-top: 20px;
  }
  .ass{
     
    text-align: center;
  }
  .relato {
    background: #c2f8be;
    border-radius: 5px;
  }
</style>
  <div class="os">
   
    <div class="row ">
        <div class="col-sm-2"><img src="/image/logo.png" class="logo" alt="Image" width="100px" height="auto"></div>
        <div class="col-sm-8">
     <h2>NEWERP - (61) 3399-3399</h2> 
       <p>Endereço: QC 01 Conj D Santa Maria  </p>
       <p>Endereço: QC 01 Conj D Santa Maria  </p>
        </div>

  <div class="row ">
        <div class="col-sm-4"> <h3>OS Nº: {{$OS->id}}</h3> </div>
        <div class="col-sm-8"><h3>DATA: {{ date('d/m/Y - H:s', strtotime($OS->created_at)) }} </h3> </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-sm-4"> <h4>Cliente Nº: {{$clientData->id}}</h4></div>
      </div>
      <div class="row"> 
        <div class="col-sm-8"><h4>Nome: {{$clientData->name}}</h4> </div>
        <div class="col-sm-4"><h4>Telefone: {{$clientData->fone}}</h4> </div>
      </div>
       <div class="row">
       <div class="col-sm-10"><h4>Endereço: {{$clientData->address}}</h4> </div>
      </div>
      <hr>
    <div class="row ">
        <div class="col-sm-6"> <h3>Equipamento</h3> </div>
        <div class="col-sm-6"> <h3> Nº de série:  {{$equipamentData->serialNumber}}</h3> </div>
         
        </div>


     <!--  <p>Get three equal-width columns <strong>starting at desktops and scaling to large desktops</strong>. On mobile devices, tablets and below, the columns will automatically stack.</p> -->
      <div class="row">
         
        <div class="col-sm-4"> <h4><strong>Tipo:</strong>   {{$equipamentData->type}}</h4></div>
        <div class="col-sm-4"> <h4><strong>Marca:</strong>  {{$equipamentData->mark}}</h4></div>
        <div class="col-sm-4"> <h4><strong>Modelo:</strong>  {{$equipamentData->design}}</h4></div>
      </div>
      <div class="row   relato">
        <div class="col-sm-6"> <h4><strong>Problema:</strong>  {{$equipamentData->problem}}</h4></div>
        <div class="col-sm-6"> <h4><strong>Observações:</strong>  {{$equipamentData->observations}}</h4></div>
      </div>

      <hr>
    <hr>
    <div class="row ">
        <div class="col-sm-4"> <h3>Termos</h3> </div>
        </div>
        <div class="row ">
        <div class="col-sm-12"> {{$terms}} </div>
        </div>
        <br>
        <hr> 
         <br>
         
        <div class="row ass">
        <div class="col-sm-12"> ________________________________________________________<br> {{$clientData->name}} </div>
         
        </div>

<br><br>
<!-- <img src="impressora.jpg" onclick="javascript:window.print();"> --> <br>
<button class="btn btn-success" onclick="window.print()">Imprimir</button>

</div>



 
@endsection











 