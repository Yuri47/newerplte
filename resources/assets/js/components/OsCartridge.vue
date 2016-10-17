<script>
	import clients from './clients.vue'
	export default {

		props: ['message'],
	  
        data:function(){
            return {
                input_models:{},
                input_index:1,
            }
        },
        methods:{
            addInput(){
                this.input_index++;
                this.input_models[this.input_index] = 'ewqeqweqwewq';
            },
            removeInput(){
                this.input_index--;
                this.input_models[this.input_index] = '';
            } 
        }
    

	} 

</script>

<template>

 
<clients></clients>
 <form action="newcartridge" method="post">
 <input type="hidden" name="_token" value="{{message}}">
 <div v-for="input in input_index">
    <input type="text"  name="modelo_{{input}}" />
    <input type="text"  name="nome_{{input}}" />
 </div>
 <button type="submit">Enviar</button>
 <form>

 


 
<a v-on:click="addInput()">+</a>
<a v-on:click="removeInput()">-</a>

 


</template>
<style scoped=""></style>
