<script>
	import {range} from 'lodash'
	export default{

		props: ['source'],

			data () {
			return{
				pages: []
			}

	},
		methods: {

			nextPrev(ev, page) {
				ev.preventDefault()
				if(page == 0 || page == this.source.last_page+1) {
					return;
				}
				this.navigate(ev, page)
			},

			navigate(ev, page){
				ev.preventDefault()
				this.$dispatch('navigate', page)
			}

		},


		watch: {
			source () {

				this.pages = range(1, this.source.last_page+1)
				 

			}
		}
}
</script>




<template>
	


<ul class="pagination">
	<li :class="{disabled: source.current_page == 1}">
		<a href="#" @click="nextPrev($event, source.current_page-1)">&laquo;</a>
	</li>
	<li v-for="page in pages" :class="{active: source.current_page == page}">
		<a href="#" @click="navigate($event, page)">{{page}}</a>
	</li>
	 
	<li :class="{disabled: source.current_page == source.last_page}">
		<a href="#" @click="nextPrev($event, source.current_page+1)">&raquo;</a>
	</li>
</ul>










</template>