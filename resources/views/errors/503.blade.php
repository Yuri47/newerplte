@extends('layouts.app')

@section('htmlheader_title')
    {{ trans('adminlte_lang::message.serviceunavailable') }}
@endsection

@section('contentheader_title')
    {{ trans('adminlte_lang::message.503error') }}
@endsection

@section('$contentheader_description')
@endsection

@section('main-content')

    <div class="error-page">
        <h2 class="headline text-red">SERVIDOR EM MANUTENÇÃO</h2>
        <div class="error-content">
            
        </div>
    </div><!-- /.error-page -->
@endsection