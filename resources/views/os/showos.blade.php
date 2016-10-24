 <!DOCTYPE html>
 <html lang="en">
 <head>
  <meta charset="UTF-8">
  <!-- <link rel="stylesheet" href="{{realpath(base_path())."/public/css/pdf2.css"}}"> -->
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
  
</style>
 

 <div class="pagina">

 <table border="1">
<tr>
<td>Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi commodi sunt asperiores in eius cum rem dolores laborum dolorem non, consequuntur error quisquam iusto fugiat, fuga a, hic accusamus reiciendis.ipsum dolor sit amet, consect i, ver m quam temporibus. Earum.</td>
<td>linha 1, célula 2</td>
<td>linha 1, célula 1</td>
<td>linha 1, célula 2</td>
</tr>
<tr>
<td colspan="2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, enim iusto odit provident sequi impedit assumenda voluptatem labore. Quos enim saepe et cumque, fuga itaque blanditiis! Sequi possimus tempora, odit.</td>
 
</tr>
 <table border="1">
<tr>
<td colspan="4">Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi commodi sunt asperiores in eius cum rem dolores laborum dolorem non, consequuntur error quisquam iusto fugiat, fuga a, hic accusamus reiciendis.ipsum dolor sit amet, consect i, ver m quam temporibus. Earum.</td>
 
</tr>
<tr>
<td colspan="2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, enim iusto odit provident sequi impedit assumenda voluptatem labore. Quos enim saepe et cumque, fuga itaque blanditiis! Sequi possimus tempora, odit.</td>
<td colspan="2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, enim iusto odit provident sequi impedit assumenda voluptatem labore. Quos enim saepe et cumque, fuga itaque blanditiis! Sequi possimus tempora, odit.</td>
 
</tr>
 
</table>
</div>


 
<!--   <div class="  pagina  ">

    <div class="   ">
  <div class="conteudo"><div class=" "><img src="{{realpath(base_path())."/public/image/logo.png"}}" class="logo" alt="Image" width="100px" height="auto"></div>
       </div>
  <div class="lateral"><h2>NEWERP - (61) 3399-3399f</h2> 
       <p>Endereço: QC 01 Conj D Santa Maria  </p>
       <p>Endereço: QC 01 Conj D Santa Maria  </p>
     </div>
</div>
   
    <div class="row ">
          <div class="col-sm-8">
     
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


      <p>Get three equal-width columns <strong>starting at desktops and scaling to large desktops</strong>. On mobile devices, tablets and below, the columns will automatically stack.</p>
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
 

</div>
 -->


 



















 
 </body>
 </html>


















 











 