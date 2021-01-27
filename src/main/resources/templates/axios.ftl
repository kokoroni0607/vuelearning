<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page1</title>
    <script src="/static/jquery/jquery-1.11.3.min.js"></script>
    <script src="/static/vue/vue.min.js"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/static/layui/layer.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>

<body>
axios success
<div id="testDiv">
    <div>{{info.name}}</div>
</div>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            info: {
                name: null
            }
        },
        mounted(){
            axios.post("/testHtml/axiosData",{
                id: 1
            }).then(response => (this.info = response.data));

        }
    });
</script>

</html>