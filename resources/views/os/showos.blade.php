 <!DOCTYPE html>
 <html lang="en">
 <head>
  <meta charset="UTF-8">
  
  <title>Document</title>

 



 </head>
 <body>
   




<style type="text/css">
  
*, *:after, *:before {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
   box-sizing: border-box;
}
.clearfix:after {
  content: '.';
  display: block;
  clear: both;
  width: 100%;
  height: 0;
  line-height: 0;
  overflow: hidden;
}
.pagina {
  
  margin: 30px ;
  margin: 30px ;
  clear: both;
}
.conteudo {
  float: left;
  /* Apenas para nosso exemplo */
  background: yellow;
  width: 25%;
 

}
.lateral {
  float: left;
  width: 25%;
  /* Apenas para nosso exemplo */
  background: purple;
}
/* Apenas para nosso exemplo */
.conteudo, .lateral {
  height: 300px;
}

.centroEsq{
width: 25%;
background: green;
float: left;
}
.centroDir{
width: 25%;
background: blue;
float: left;
}
 
 .row {
    margin-bottom: 10px;
    margin: 20px;
}

.row:last-child {
    margin-bottom: 0;
}
th, td {
    padding: 5px;
    text-align: left;
    vertical-align: top;    
}
.pro {
  background-color: #bbffb7;
}
  
</style>
 

 <div class="pagina">

 <table border="0">
<tr>
<td  >  <img src="{{realpath(base_path())."/public/image/logo.png"}}" class="logo" alt="Image" width="100px" height="auto"></td>
<td  ><h2>NEWERP - (61) 3399-3399f</h2> 
       <p>Endereço: QC 01 Conj D Santa Maria  </p>
       <p>Endereço: QC 01 Conj D Santa Maria  </p></td>
       </tr>
 </table>
  
<h2 style="text-align:center">OS Nº: {{$OS->id}} - {{ date('d/m/Y - H:s', strtotime($OS->created_at)) }}</h2>
<h4 style="text-align:center">Cliente Nº: {{$clientData->id}}</h4>

<table border="0">
<tr>
<td   WIDTH=400 >Nome: {{$clientData->name}}  </td>
<td   >Telefone: {{$clientData->fone}} </td>
</tr>
<tr>
<td colspan="2" >Endereço: {{$clientData->address}} </td>
</tr>
</table>
<h2 style="text-align:center">Equipamento</h2>

 
 <table border="0" CELLSPACING=0>
<tr>
<td WIDTH=190  > <strong>Tipo:</strong>   {{$equipamentData->type}}</td>
<td WIDTH=170  > <strong>Marca:</strong>  {{$equipamentData->mark}}</td>
<td WIDTH=170  > <strong>Modelo:</strong>  {{$equipamentData->design}}</td>
 
</tr>
<tr class="pro" >
<td colspan="2"> <strong>Problema:</strong>  {{$equipamentData->problem}}</td>
<td colspan="2">  <strong>Observações:</strong>  {{$equipamentData->observations}}</td>
 
</tr>
 
</table>
<div class="terms" style="text-align:center"><h2>Termos</h2></div>
<div class="terms">{{$terms}}</div>
<div class="terms" style="text-align:center"> ________________________________________________________<br> {{$clientData->name}}</div>
</div>


  









  <div class="pagina">
 
<h2 style="text-align:center">OS Nº: {{$OS->id}} - {{ date('d/m/Y - H:s', strtotime($OS->created_at)) }}</h2>
<h4 style="text-align:center">Cliente Nº: {{$clientData->id}}</h4>

<table border="0">
<tr>
<td   WIDTH=400 >Nome: {{$clientData->name}}  </td>
<td   >Telefone: {{$clientData->fone}} </td>
</tr>
<tr>
<td colspan="2" >Endereço: {{$clientData->address}} </td>
</tr>
</table>
<h2 style="text-align:center">Equipamento</h2>

 
 <table border="0" CELLSPACING=0>
<tr>
<td WIDTH=190  > <strong>Tipo:</strong>   {{$equipamentData->type}}</td>
<td WIDTH=170  > <strong>Marca:</strong>  {{$equipamentData->mark}}</td>
<td WIDTH=170  > <strong>Modelo:</strong>  {{$equipamentData->design}}</td>
 
</tr>
<tr class="pro" >
<td colspan="2"> <strong>Problema:</strong>  {{$equipamentData->problem}}</td>
<td colspan="2">  <strong>Observações:</strong>  {{$equipamentData->observations}}</td>
 
</tr>
 
</table>
<div class="terms" style="text-align:center"><h2>Termos</h2></div>
<div class="terms">{{$terms}}</div>
<div class="terms" style="text-align:center"> ________________________________________________________<br> {{$clientData->name}}</div>

 







<br>



 <h4 style="text-align:center">OS Nº: {{$OS->id}} - {{ date('d/m/Y - H:s', strtotime($OS->created_at)) }}</h4>
<h4 style="text-align:center">Cliente Nº: {{$clientData->id}}</h4>

<table border="0">
<tr>
<td   WIDTH=400 >Nome: {{$clientData->name}}  </td>
<td   >Telefone: {{$clientData->fone}} </td>
</tr>
<tr>
<td colspan="2" >Endereço: {{$clientData->address}} </td>
</tr>
</table>
<h4 style="text-align:center">Equipamento</h4>

 
 <table border="0" CELLSPACING=0>
<tr>
<td WIDTH=190  > <strong>Tipo:</strong>   {{$equipamentData->type}}</td>
<td WIDTH=170  > <strong>Marca:</strong>  {{$equipamentData->mark}}</td>
<td WIDTH=170  > <strong>Modelo:</strong>  {{$equipamentData->design}}</td>
 
</tr>
<tr class="pro" >
<td colspan="2"> <strong>Problema:</strong>  {{$equipamentData->problem}}</td>
<td colspan="2">  <strong>Observações:</strong>  {{$equipamentData->observations}}</td>
 
</tr>
 
</table>
 



</div>
 
 </body>
 </html>


















 











 