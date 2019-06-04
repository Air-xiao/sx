$(function() {
    $('#myform').validate({
        rules: {
            username: {
                required: true,
                email: true
            },
            password: {
                required: true,
                rangelength: [6, 10]
            }
        }
    });
    $.extend($.validator.messages, {
        required: "这是必填字段",
        email: "请输入有效的电子邮件地址",
        rangelength: $.validator.format("请输入长度在 {0} 到 {1} 之间的字符串"),
    })
})