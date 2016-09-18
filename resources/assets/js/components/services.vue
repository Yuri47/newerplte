<script>
	import bar from './insertClient.vue'
	export default {

		props: ['users'],
		components: {
		 	bar
		 },

		data: function() {
			return {
				//list: [],
				sortProperty: 'name',
				sortDirection: 1,
				filterTerm: '',
				title: '',
				nameName: '', 
				emailEmail: ''
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
			showUser(id, name, email) {
				
				 
				this.title = id
				this.nameName = name
				this.emailEmail = email 
				console.log(name)
				return '2pac'
			},

			sendName() {
				this.$dispatch('mudar-nome', {nomeSer: 'Nome vindo do services.vue'})
			},
			saveBar(bar) {
      //save bar
      			title = this.$on('confirmed')
    			}
			

		},

		ready () {
			//this.list = JSON.parse(this.users)
			this.$http.get('/usuarios/listar').then((req) => this.users = req.data)
		}

	} 

</script>

<template>

	<h1>Usuarios</h1>
	 
	{{title}}
<input type="text" class="form-control" id="" placeholder="Input field"  v-model="title">


<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Pesquisar</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
       



<div class="well">
		<input type="text" class="form-control" placeholder="Filtrar" v-model="filterTerm">
	</div>
	<div>

	 <table class="table table-bordered table-striped table-hover">
	 	
		<thead>
			<tr>
				<th><a href="#" @click="sort($event, 'id')">ID</a></th>
				<th><a href="#" @click="sort($event, 'name')">Nome</a></th>
				<th><a href="#" @click="sort($event, 'email')">Email</a></th>
				
			</tr>
		</thead>
		<tbody>
	
			<tr v-for="u in users | filterBy filterTerm| orderBy sortProperty sortDirection">
				
				<td>{{u.id}}</td>
				<td>{{u.name}}</td>
				<td>{{u.email}}</td>
				<td><button class="btn btn-success" @click="showUser(u.id, u.name, u.email)">Editar</button></td>
				
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
