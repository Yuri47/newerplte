@extends('layouts.app')

@section('htmlheader_title')
  Caixa
@endsection


@section('main-content')


<div class="row">
  <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>R$ {{$totalCashDay}},00<sup style="font-size: 20px"></sup></h3>

              <p>Vendas Totais</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

  <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>R$ {{$money}},00 </h3>

              <p>Dinheiro em Caixa</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>R$ {{$debit}},00</h3>

              <p>Vendas no Débito</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>R$ {{$credit}},00</h3>

              <p>Vendas no Crédito</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
</div>

 
   

<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Retirar</button>

<div class="modal fade bs-example-modal-lg shown.bs.modal" :autofocus id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
       
<h1>Retirar Dinheiro</h1>

  <form action="/retirecash" method="POST" role="form">
     
      <input type="hidden" name="_token" value="{{csrf_token()}}">
      <input type="hidden" name="type" value="sake">
  


 <div class=" ">
    <div class="form-group">
        <label for="">Valor</label>
        <input type="text" class="form-control" required autocomplete="off" name="price"    >
    </div>
  </div>
    <div class=" ">
    <div class="form-group">
        <label for="">Descrição</label>
        <input type="text" class="form-control" required autocomplete="off" name="description"    >
    </div>
  </div>
	 
 <input type="submit" value="Retirar" class="btn btn-primary">

 
      
 

	 </form>




    </div>
  </div>
</div>
 <br>






<br>
<br>
<br>
 

	 <table class="table table-bordered table-striped table-hover">
	 	
		<thead>
			<tr>
				<th><a >Data</a></th>
				<th><a>Valor</a></th>
				<th><a>Descrição</a></th>
				 
				
			</tr>
		</thead>
		<tbody>
	


 

 @foreach ($allData as $dt)
			@if ($dt->type == "retire")
			<tr class="danger">
			@elseif ($dt->type == "sake")
			<tr class="warning"> 
			@else
			<tr>
			@endif	 
				<td class=" ">{{$dt->created_at}}</td>
				<td class=" ">R$ {{$dt->price}}</td>
				<td class=" ">{{$dt->description}}</td>
			 	 
			</tr>
 @endforeach
		</tbody>
		

	 </table> 

 


 



@endsection

