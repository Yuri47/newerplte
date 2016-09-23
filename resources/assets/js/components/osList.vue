<script>
import bus from './bus' //essa classe bus serve como transporte de dados.
import pagination from './pagination.vue'
	export default {

		components: {
			pagination
		},
		props: ['listOs', 'users'],
		// props: ['Users'],

		data: function() {
			return {
				//list: [],
				sortProperty: 'id',
				sortDirection: -1,
				filterTerm: '',
				dados: { //inicia o objeto dados que vai guardar variaveis dentro dele.

      					},
      			estado: 'success',
      			isA: false,
  				isB: true,
  				pagination: {}
			}
		},

		methods: {

			navigate(page) {
				this.$http.get('/os/list?page='+page).then((req) => {


				this.listOs = req.data.data
				this.pagination = req.data


			})
			},

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
			this.$http.get('/os/list').then((req) => {


				this.listOs = req.data
				// this.listOs = req.data.data //discomment this for habilite pagination
				this.pagination = req.data


			})
			// this.$http.get('/clients/list').then((req) => this.users = req.data)



		}

	} 

</script>

<template>

	
 
 


 
       
<h1>Lista de OS</h1>
 
 
<div class="well">
		<input type="text" class="form-control"  id="myInput" placeholder="Filtrar C" v-model="filterTerm"   >
	</div>
	<span class="input-group-addon">
        <input type="checkbox" aria-label="..." v-model="filterTeste">
      </span>

	<div>

	 <table class="table table-bordered table-striped table-hover">
	 	
		<thead>
			<tr>
				<th><a href="#" @click="sort($event, 'id')">ID</a></th>
				<th><a href="#" @click="sort($event, 'state')">Estado</a></th>
				<th><a href="#" @click="sort($event, 'created_at')">Data</a></th>
				<th><a href="#" @click="sort($event, 'name')">Nome</a></th>
				
			</tr>
		</thead>
		<tbody>
	
			<tr v-for="u in listOs  | filterBy filterTerm  | orderBy sortProperty sortDirection" >
				 
				<td class="estado-{{u.state}}">{{u.id}}</td>
				<td class="estado-{{u.state}}">{{u.state}}</td>
				<td class="estado-{{u.state}}">{{u.created_at}}</td>
				<td class="estado-{{u.state}}">{{u.name}}</td>
				<td> <a href="/listos/visualizar/{{u.id}}"><button class="btn btn-success">Selecionar</button></a> </td>
				 
			</tr>
		</tbody>
		

	 </table> 
	 <div class="text-center">
	 <!-- <pagination :source="pagination" @navigate="navigate"></pagination>  discomment this for habilite pagination-->
</div>
	</div>



 

<br><hr>

	

 


</template>
<style scoped="">
	
	.estado-PRONTO{
		background-color: #b2e09f;
	}
	.estado-ANALISE{
		background-color: #f85454;
	}
	.estado-ENTREGUE{
		background-color: #3c8dbc;
	}
	 


</style>
