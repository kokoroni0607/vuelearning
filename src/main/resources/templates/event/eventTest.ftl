<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>event test</title>
    <script src="/static/jquery/jquery-1.11.3.min.js"></script>
    <script src="/static/vue/vue.min.js"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/static/layui/layer.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>

<body>
event test success
<div id="testDiv">
    <button @click="greet">哈喽啊,{{name}}</button>
    <label>
        <input @keyup.enter="submit"/>
    </label>
</div>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            name: '${currentName}',
        },
        methods: {
            greet: function (event) {
                alert("来啦?" + this.name + "老弟");
            },
            submit: function () {
                axios.post("/testHtml/axiosData",{
                    id: 1
                }).then(response => (this.name = response.data.name));
            }
        }
    });
</script>

</html>