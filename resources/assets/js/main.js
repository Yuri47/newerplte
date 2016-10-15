import Vue from 'vue'
import VcUsers from './components/services.vue';
import VcClients from './components/clients.vue';
import OsList from './components/osList.vue';
import OsCartridge from './components/OsCartridge.vue';
import VcInsert from './components/insertClient.vue'; 
import foo from './components/foo.vue';
import bar from './components/bar.vue';
import VueResource from 'vue-resource'
import bus from './components/bus'
Vue.use(VueResource)

 new Vue ({
 	el: 'body',

 	components: {
		VcUsers,
		VcClients,
		OsList,
		OsCartridge
	}, 

 	data: function(){
 		return{
 		
 			ist: {} 
 		

 		 }
 	},
 	ready () {
			bus.$on('dados-clientes', (dat) => 
			//this.nome = dados.name
 			this.ist = dat
			) //o script irá pegar os dados do objeto bus dinamicamente. Aqui podemos enviar dados para o arquivo
			//services.blade.php.
		},

		methods: {
			limp () {
        this.ist = ''
    }
		}
    
       
    

 })