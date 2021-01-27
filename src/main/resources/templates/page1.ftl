<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page1</title>
</head>
<body>
Page1 success
<div id="testDiv">
{{message}}
</div>
</body>
<script src="/static/vue/vue.min.js"></script>
<script>
    new Vue({
        el: '#testDiv',
        data: {
            message: "hello vue"
        }
    });
</script>
</html>