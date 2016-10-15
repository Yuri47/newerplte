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

<clients></clients>

 



</template>
<style scoped=""></style>
