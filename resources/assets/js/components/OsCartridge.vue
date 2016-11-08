<script>
	import clients from './clients.vue';
    import bus from './bus'
	export default {

		props: ['message'],

        components: {
            clients
        },  
	  
        data:function(){
            return {
                 
                input_index:1,
                ist: {},
            }
        },
        methods:{
            addInput(){
                this.input_index++;
             
            },
            removeInput(){
                 
                this.input_index--;
                 
            },
            limp () {
                this.ist = ''
             } 
        },
        ready () {
            bus.$on('dados-clientes', (dat) => 
            //this.nome = dados.name
            this.ist = dat
            ) //o script irá pegar os dados do objeto bus dinamicamente. Aqui podemos enviar dados para o arquivo
            //services.blade.php.
        },
    

	} 

</script>

<template>

 
<clients></clients>

<button type="clean" class="btn btn-primary" @click="limp" :disabled="!ist.id">Novo</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg1" :disabled="!ist.id">Editar</button>
 <form action="/newcartridge" method="POST" role="form">


<!--================================================
=            MODAL DE EDIÇÃO DO CLIENTE            =
=================================================-->

 



<div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
               
              <h1>Editar Cliente</h1>

              <div id="divEdit"> 
            <!--  <input type="hidden" name="id" id="id" value="{{ist.id}}"> -->
       
        <!-- name: <input type="text" class="texto" id="valueText"> -->
                <div class="form-group">
                  <label for="">Name</label>
                  <input type="text" class="form-control"  autofocus required placeholder=" Name" id="nameEdit" name="name" v-model="ist.name" >

                </div>
             <div class="form-group">
                <label for="">Fone</label>
                <input type="text" class="form-control"  required placeholder="Fone" id="foneEdit" name="fone"  v-model="ist.fone" >
            </div>
            <div class="form-group">
                <label for="">Address</label>
                <input type="text" class="form-control"  required placeholder="Address" id="addressEdit" name="address"   v-model="ist.address"  >
            </div>
          
        <br><br>
         
         <button   class="btn btn-lg btn-primary" data-dismiss="modal">Editar</button> <br>


        <br>
        <br>
        <br>

        </div>

        

            </div>
          </div>
</div>


<!--====  End of MODAL DE EDIÇÃO DO CLIENTE  ====-->

     
 
      <input type="hidden" name="client_id" value="{{ist.id}}">
      <div class="form-group">
        <label for="">Name</label>
        <input type="text" class="form-control" id="" required placeholder=" Name"  name="name"  v-model="ist.name" :readonly="ist.id">

      </div>
      <div class="form-group">
        <label for="">Fone</label>
        <input type="text" class="form-control" id="" required placeholder="Fone"  name="fone"   v-model="ist.fone" :readonly="ist.id">
        <label for="">Address</label>
      </div>
      <div class="form-group">
        <input type="text" class="form-control" id="" required placeholder="Address" name="address"   v-model="ist.address" :readonly="ist.id" >
      </div>
 















 
 <input type="hidden" name="_token" value="{{message}}">
 <h1>Cartucho</h1>
  

 <div v-for="input in input_index">
 <div class="row">
<input type="hidden" name="control" value="{{input}}">
 <div class="col-md-2"> 
    <div class="form-group">
        <label for="">Marca</label>
        <input type="text" class="form-control"  required autocomplete="off" name="mark_{{input}}" style="text-transform:uppercase"   >
    </div>
  </div>
  <div class="col-md-2">
<div class="form-group">
        <label for="">Numero</label>
        <input type="text" class="form-control"  required autocomplete="off" name="number_{{input}}"    >
    </div>
  </div>
  <div class="col-md-2">
    <div class="form-group">
        <label for="">Numero de série</label>
        <input type="text" class="form-control" required autocomplete="off" name="serialNumber_{{input}}"    >
    </div>
  </div>
    <div class="col-md-2">
    <div class="form-group">
        <label for="">Valor</label>
        <input type="text" class="form-control" required autocomplete="off" name="price_{{input}}"    >
    </div>
  </div>
   
 
 </div> <!-- div row -->

 </div> <!-- div for -->


 <div class="col-md-2">
    <div class="form-group">
        <label for="">Pago</label>
        <div class="radio">
            <label><input type="radio" required name="pay" value="yes" v-model = "select">Sim</label>
            <label><input type="radio" required name="pay" value="no" v-model = "select">Não</label>
        </div>
        <div v-if = "select === 'yes' ">
        <label><input type = "radio" name = "type" value = "money">Dinheiro</label>
        <label><input type = "radio" name = "type" value = "debit">Débito</label>
        <label><input type = "radio" name = "type" value = "credit">Crédito</label>
        </div>
           
    </div>
    </div>
 <button type="submit" class="btn btn-lg btn-success">Enviar</button>
 <button @click.stop.prevent="addInput()" class="btn btn-lg btn-primary">Add</button>
 <button @click.stop.prevent="removeInput()" class="btn btn-lg btn-danger">Remove</button> 
 <form>

    
  
 
 
  
 



 

 


</template>
<style scoped=""></style>
