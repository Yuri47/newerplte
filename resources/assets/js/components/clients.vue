<script>
import bus from './bus' //essa classe bus serve como transporte de dados.
	export default {

		props: ['users'],

		data: function() {
			return {
				//list: [],
				sortProperty: 'name',
				sortDirection: 1,
				filterTerm: '',
				dados: { //inicia o objeto dados que vai guardar variaveis dentro dele.

      					} 
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
			//this.list = JSON.parse(this.users)
			this.$http.get('/clients/list').then((req) => this.users = req.data)


		}

	} 

</script>

<template>

	
 
 


<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Pesquisar</button>

<div class="modal fade bs-example-modal-lg shown.bs.modal" :autofocus id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
       
<h1>Lista de Clientes</h1>


<div class="well">
		<input type="text" class="form-control"  id="myInput" placeholder="Filtrar C" v-model="filterTerm"   >
	</div>
	<div>

	 <table class="table table-bordered table-striped table-hover">
	 	
		<thead>
			<tr>
				<th><a href="#" @click="sort($event, 'id')">ID</a></th>
				<th><a href="#" @click="sort($event, 'name')">Nome</a></th>
				<th><a href="#" @click="sort($event, 'fone')">Telefone</a></th>
				<th>Endereço</th>
				
			</tr>
		</thead>
		<tbody>
	
			<tr v-for="u in users | filterBy filterTerm| orderBy sortProperty sortDirection">
				
				<td>{{u.id}}</td>
				<td>{{u.name}}</td>
				<td>{{u.fone}}</td>
				<td>{{u.address}}</td>
				<td><button class="btn btn-success" @click="inserirDados(u)" >Inserir</button></td>
				
			</tr>
		</tbody>
		

	 </table> 

	</div>




    </div>
  </div>
</div>

<br><hr>

	



</template>
<style scoped=""></style>
