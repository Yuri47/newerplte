<script>
	import clients from './clients.vue'
	export default {


		 components: {
		 	clients
		 },

		data: function() {
			return {
				//list: [],
				sortProperty: 'name',
				sortDirection: 1,
				filterTerm: '',
				title: '', 
				emailEmail: '',
				nameName: clients.nameName,
				 bar: {
        			msg: 'Eu sou o Bar!'
      			}
			}
		},

		methods: {
 			confirm() {
 				this.$emit('confirmed', this.bar)
 			}
			

		},

		ready () {
			//this.list = JSON.parse(this.users)
			//this.$http.get('/clients/list').then((req) => this.users = req.data)

		},
 	
 		events: {
 		   
 	}

	} 

</script>

<template>
  <button @click="confirm">Confirmar</button>

<form action="#" method="POST" role="form">
	<legend>Form title</legend>

	<div class="form-group">
		<label for="">Name</label>
		<input type="text" class="form-control" id="" placeholder="{{nameName}}" v-model="nameName">
	</div>
	<div class="form-group">
		<label for="">Email</label>
		<input type="text" class="form-control" id="" placeholder="Input field"  v-model="title">
	</div>

	

	<button type="submit" class="btn btn-primary">Submit</button>
</form>
 

</template>
<style scoped=""></style>
