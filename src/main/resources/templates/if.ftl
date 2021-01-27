<!DOCTYPE html>
<html lang="en"  xmlns:v-on="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Page1</title>
    <script src="/static/vue/vue.min.js"></script>
</head>

<body>
if success
<div id="testDiv">
    <div v-if="success">if really success</div>
    <div v-else>if failed in fact</div>
    <template v-if="success">
        <div>congratulations!</div>
        <div>you are so talented!</div>
    </template>
</div>
</body>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            success: ${message}
        },
        computed:{
            seen: function () {
                return this.success;
            }
        }
    });
</script>

</html>