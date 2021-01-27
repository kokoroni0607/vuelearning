<!DOCTYPE html>
<html lang="en" xmlns:v-on="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>text</title>
    <script src="/static/vue/vue.min.js"></script>
</head>
<body>
learning success
<div id="textDiv">
    {{message}}
</div>
<div id="timesDiv" @click="plusTime">
    this is the {{num}} time you click this line
    and count is {{count}}
</div>
</body>
<script>
    new Vue({
        el: '#textDiv',
        data: {
            message: "learning bind event"
        }
    });
    var timeVue = new Vue({
        el: '#timesDiv',
        data: {
            num: 0,
        },
        computed:{
            count: function () {
                return this.num * 2;
            }
        },
        methods: {
            plusTime() {
                this.num += 1;
            }
        }
    });
</script>
</html>