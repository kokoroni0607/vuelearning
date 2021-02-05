<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>event test</title>
    <script src="/static/jquery/jquery-1.11.3.min.js"></script>
    <script src="/static/vue/vue.min.js"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/static/layui/layer.js"></script>
    <script src="/static/axios/dist/axios.min.js"></script>
</head>

<body>
component test success
<div id="testDiv">
    <compo></compo>
    <compo2></compo2>
    <compo3></compo3>
</div>
</body>

<script>
    let compo = Vue.extend({
        template: '<div>A custom component!</div>'
    });
    // 全局组件
    Vue.component('compo', compo);
    // 语法糖，这样注册也是全局的
    Vue.component('compo2', {template: '<div>compo2 success</div>'});

    new Vue({
        el: '#testDiv',
        data: {
            selected: '',
            options: ''
        },
        mounted() {
        },
        // 局部组件
        components: {
            "compo3": {
                template: "<div>compo3 success</div>"
            }
        },
        methods: {
            submit: function () {
            }
        }
    });
</script>

</html>