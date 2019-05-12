<template>
  <v-app> // compenente obrigatório do vuetify
    <h4 class='white--text'>Header Component</h4>
    <v-content> // envolve o conteúdo da página (seria o yeld do rails)
      <h4 class='white--text'>Main Component</h4>
    </v-content>
    <h4 class='white--text'>Footer Component</h4>
  </v-app>
</template>

<script>
  export default {
    data (){
      return {

      }
    }
  }
</script>

<style>
  #app {
    background-color: #0c0c0c !important;
  }
</style>
