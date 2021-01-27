<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page1</title>
    <script src="/static/jquery/jquery-1.11.3.min.js"></script>
    <script src="/static/vue/vue.min.js"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/static/layui/layer.js"></script>
</head>

<body>
list success
<div id="testDiv">
    <table class="layui-table" lay-skin="nob">
        <tr id="example-1">
            <td v-for="item in numbers">
                {{ item }}
            </td>
        </tr>
    </table>
</div>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            numbers: [1, 2, 3, 4, 5]
        },
    });
</script>

</html>