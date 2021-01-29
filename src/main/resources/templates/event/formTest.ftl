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
form test success
<div id="testDiv">
    <label>姓名
        <input type="text" v-model="name" placeholder="input name"/>
    </label>
    <label>性别
        <select v-model="sex">
            <option selected>男</option>
            <option>女</option>
        </select>
    </label>
    <button @click="submit">提交</button>

</div>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            name: '',
            sex: ''
        },
        methods: {
            submit: function () {
                axios.post("/event/axiosData",{
                    name: this.name,
                    sex: this.sex
                }).then(response => console.log(response.data.id));
            }
        }
    });
</script>

</html>