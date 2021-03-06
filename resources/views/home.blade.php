@extends('layouts.app')

@section('htmlheader_title')
	Home
@endsection


@section('main-content')
 <h1>Home</h1>
 
<a href="/tst" target="_blank"> <button  type="button" class="btn btn-danger">button</button></a> 

 <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>{{config('config.countOs')}}</h3>

              <p>New Orders</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>R$ {{config('config.osPrice')}},00<sup style="font-size: 20px"></sup></h3>

              <p>Valor total dos serviços</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>{{config('config.users')}}</h3>

              <p>User Registrations</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>{{config('config.osOpen')}}</h3>

              <p>OS em aberto</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>

@foreach ($errors->all() as $error)
    {{$error}}<br>  <!-- imprimir os erros de validação caso haja algum, serão enviados pelo Validator -->
@endforeach


  <form action="teste336" method="POST">
    
      <input type="hidden" name="_token" value="{{csrf_token()}}">
       
      <div class="form-group">
        <label for="">Nome</label>
        <input type="text" autocomplete="off" class="form-control" id=""   placeholder="Nome"  name="name"  >
      </div>
      <div class="form-group">
        <label for="">Telefone</label>
        <input type="text" autocomplete="off" class="form-control phone"   placeholder="Telefone" name="fone"   >
          </div>
       
      <input type="submit" value="Enviar">



  </form>






@endsection


<!--======================================================
=            TEMPLATE PADRÃO PARA O ADMIN LTE            =
==========================================================

extends('layouts.app')

section('htmlheader_title')
  
endsection


section('main-content')
 
endsection

*** INSERT THE @ BEFORE COMMANDS
========  End of TEMPLATE PADRÃO PARA O ADMIN LTE  ====-->