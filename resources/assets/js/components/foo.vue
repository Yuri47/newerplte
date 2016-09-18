<script>  
import bus from './bus' //essa classe bus serve como transporte de dados.
export default {  
	 

  data() {
    return {
      dados: { //inicia o objeto dados que vai guardar variaveis dentro dele.

      }

    }
  },

  methods: {
    buttonClickHandler () { //metodo do botão
    		this.dados.name = 'Yuri Alexs' 
    		this.dados.email = 'yuri.alexs@gmail.com'//preenche o objeto dados
            bus.$emit('botao-foi-clicado', this.dados) //envia o objeto para a classe bus com o nome "botao-foi-clicado"
            console.log('botao pressionado') //debug
        }
}
}
</script>  
<template>  
  <div> 
			<a href="#" @click="buttonClickHandler">Botao Foo</a>



  </div>
</template>  