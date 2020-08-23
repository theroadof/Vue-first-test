<template>
  <div id="HelloWorld">
    <div id="app-1">
      {{ message }}
    </div>
    <div id="app-2">
      <span v-bind:title="time">
        鼠标悬停几秒钟查看此处动态绑定的提示信息！
      </span>
    </div>
    <div>
      <ol>
        <li v-for="todo in todos" :key="todos.indexOf(todo)" v-if="seen">
          {{ todo.text }}
        </li>
        <button v-on:click="disable">show/hidden</button>
      </ol>
    </div>
    <div>
      <p v-if="seen">{{ title }}</p>
      <button v-on:click="disable">hidden/display</button>
    </div>
    <div>
      <p>{{message}}</p>
      <el-input v-model="message" clearable></el-input>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      todos: [{text: 'Vue.js'}, {text: 'JavaScript'}, {text: 'Element-UI'}],
      seen: true,
      message: 'Hello world!',
      time: '页面加载于' + new Date().toLocaleString(),
      title: 'Hello Teddy'
    }
  },
  methods: {
    disable () {
      this.seen = !this.seen
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  h1, h2 {
    font-weight: normal;
  }

  ul {
    list-style-type: none;
    padding: 0;
  }

  li {
    display: inline-block;
    margin: 0 10px;
  }

  a {
    color: #42b983;
  }
</style>
