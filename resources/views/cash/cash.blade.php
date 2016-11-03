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

              <p>Caixa</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
</div>


   
Dinheiro em caixa: {{$totalCashDay}}
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

