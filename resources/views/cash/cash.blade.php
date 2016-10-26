@extends('layouts.app')

@section('htmlheader_title')
  Caixa
@endsection


@section('main-content')
   
 {{$totalCashDay}}

 @foreach ($allData as $dt)
 {{$dt->price}}
 @endforeach





 


 



@endsection

