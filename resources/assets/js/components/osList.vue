<script>
import bus from './bus' //essa classe bus serve como transporte de dados.
	export default {

		props: ['listOs', 'users'],
		// props: ['Users'],

		data: function() {
			return {
				//list: [],
				sortProperty: 'name',
				sortDirection: 1,
				filterTerm: '',
				dados: { //inicia o objeto dados que vai guardar variaveis dentro dele.

      					},
      			estado: 'success',
      			isA: false,
  				isB: true
			}
		},

		methods: {

			sort (ev, property) {

				ev.preventDefault()//não deixa seguir o link do html


				this.sortProperty = property

				if (this.sortDirection == -1) {
					this.sortDirection = 1
				} else {
					this.sortDirection = -1
				}
			},
			  inserirDados (dat) { //metodo do botão
    		//this.dados.name = 'Yuri Alexs' 
    		//this.dados.email = 'yuri.alexs@gmail.com'//preenche o objeto dados
            bus.$emit('dados-clientes',  dat) //envia o objeto para a classe bus com o nome "botao-foi-clicado"
            //console.log(dat) //debug
        }

        		 
			

		},

		ready () {
			//this.list = JSON.parse(this.listOs)
			this.$http.get('/os/list').then((req) => this.listOs = req.data)
			this.$http.get('/clients/list').then((req) => this.users = req.data)



		}

	} 

</script>

<template>

	
 
 


 
       
<h1>Lista de OS</h1>
 
 
<div class="well">
		<input type="text" class="form-control"  id="myInput" placeholder="Filtrar C" v-model="filterTerm"   >
	</div>
	<div>

	 <table class="table table-bordered table-striped table-hover">
	 	
		<thead>
			<tr>
				<th><a href="#" @click="sort($event, 'id')">ID</a></th>
				<th><a href="#" @click="sort($event, 'name')">Estado</a></th>
				<th><a href="#" @click="sort($event, 'fone')">Data</a></th>
				<th><a href="#" @click="sort($event, 'fone')">Nome</a></th>
				
			</tr>
		</thead>
		<tbody>
	
			<tr v-for="u in listOs  | filterBy filterTerm| orderBy sortProperty sortDirection">
				<!-- {{ date('d/m/Y - H:s', strtotime(u.created_at)) }} u.created_at-->
				<td>{{u.id}}</td>
				<td>{{u.state}}</td>
				<td v-bind:class="{ 'success': isA, 'danger': isB }">{{u.created_at}}</td>
				<td>{{u.name}}</td>
				<td><button class="btn btn-success" @click="inserirDados(u)" >Inserir</button></td>
				
			</tr>
		</tbody>
		

	 </table> 

	</div>



 

<br><hr>

	<script src="http://momentjs.com/downloads/moment.js"></script>
 


</template>
<style scoped=""></style>
