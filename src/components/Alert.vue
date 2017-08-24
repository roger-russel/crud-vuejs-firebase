<template>
  <div class="alert" v-if="isVisible">
    <slot></slot>
    <button type="button" name="button" @click="close()">X</button>
  </div>
</template>

<script>
export default {
  name: 'Alert',
  data(){
    return {
      isVisible: this.visible
    }
  },
  props: {
    visible: {
      type: Boolean,
      default: false,
      required: true
    }
  },
  watch: {
    visible(value){
      this.isVisible = value;
    }
  },
  methods: {
    close(){
      this.isVisible = false;
      this.$emit('alert-close', true)
    }
  }
}
</script>

<style>
  .alert {
    padding: 15px;
    margin: 20px;
    background-color: green;
    color: white;
    border-radius: 5px;
  }
  .button {
    float: right;
  }
</style>
