<script>  
import bus from './bus' //essa classe bus serve como transporte de dados.
export default {  
  data() {
    return {

    	dtr:{
       name: '', //inicia a variavel name
       email: ''
       }
    }
  },

  methods: {
       
  },
  
  
    ready () {
			bus.$on('botao-foi-clicado', (dados) => 
			this.dtr = dados

			) //o script irá pegar os dados do objeto bus dinamicamente. O objeto dados está com as variaveis,
			// então basta atribuir o objeto dados ao objeto dtr. 
		}
}
</script>  
<template>  
  <div>
     
 
 
Name: <input type="text" v-model="dtr.name" name="" id="input" class="form-control" value="" required="required" pattern="" title="">
Email: <input type="text" v-model="dtr.email" name="" id="input" class="form-control" value="" required="required" pattern="" title="">
  </div>
</template>  
