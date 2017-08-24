<template>
  <div>
    <router-link :to="{name:'teste'}">teste denovo</router-link>
    <alert :visible="visibleAlert" @alert-close="notification()">{{msg}}</alert>
    <input type="text" name="" v-model="msg">
    <button type="button" name="button" @click="toggle()">Toggle alert</button>
  </div>
</template>

<script>
  import Alert from './Alert';
  export default {
    name: 'Home',
    components: {
      Alert
    },
    data(){
        return {
          msg: 'mensagem do alerta',
          visibleAlert: false
        }
    },
    methods: {
      toggle(){
        this.visibleAlert = !this.visibleAlert;
      },
      notification(){
        this.msg = "ALERTA FECHADO";
      }
    }
  }
</script>
