<!DOCTYPE html>
<html lang="en" xmlns:v-bind="http://www.w3.org/1999/xhtml">
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
option test success
<div id="testDiv">
    <select v-model="selected">
        <option v-for="option in options" v-bind:value="option.name">
            {{option.name}}
        </option>
    </select>
    <span>selected option:{{ selected }}</span>
    <button @click="submit">提交</button>
</div>

<#list infos as info>
    <#if info.name??>
        ${info.name?substring(0,2)}
    <#else>
        fail
    </#if>
</#list>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            selected: '',
            options: ''
        },
        mounted() {
            axios.post("/event/listData", {}).then(response => (this.options = response.data));

        },
        methods: {
            submit: function () {
                axios.post("/event/axiosData", {
                    name: this.selected,
                }).then(response => console.log(response.data.id));
            }
        }
    });
</script>

</html>