$(function() {
    var shop = cookie.get('shop');
    if (shop) {
        shop = JSON.parse(shop);
        var idList = shop.map(elm => elm.id).join();
        $.ajax({
            type: "get",
            url: "../../lib/shopcar.php",
            data: {
                "idList": idList
            },
            dataType: "json",
            success: function(response) {
                var template = "";
                var tem = "";
                response.forEach(function(elm) {
                    var pic = JSON.parse(elm.pic);
                    var arr = shop.filter((val, i) => {
                        return val.id === elm.id;
                    });
                    template = `
                                <li class="item">
                                    <div class="c-box">
                                        <input type="checkbox" class="${elm.id}">
                                    </div>
                                    <div class="p-img">
                                        <img src="${pic[0].one}">
                                    </div>
                                    <div class="p-title">
                                        ${elm.title}
                                    </div>
                                    <div class="p-num">
                                        数量：<input type="number" value="${arr[0].num}" min="1" max="${elm.num}">
                                    </div>
                                    <div class="p-price">
                                        单价:${elm.price}
                                    </div>
                                    <div class="p-sum">
                                        总价:${(arr[0].num*elm.price).toFixed(2)}
                                    </div>
                                    <div class="del" id="${elm.id}"><a href="">删除</a></div>
                                </li>
                                `;
                    $('.itemlist').append(template);

                    //删除
                    $('#' + elm.id).on('click', function() {
                        var id = elm.id;
                        var b = JSON.parse(cookie.get('shop')).filter(function(elm, i) {
                            return elm.id != id
                        });
                        var c = JSON.stringify(b);
                        cookie.set("shop", c, 1);
                        $(this)[0].parentNode.parentNode.remove();
                    });

                    // 总价
                    $("." + elm.id).on('change', function() {
                        var sum = $('.total>span').html().split(':')[1] - 0;
                        if ($("." + elm.id).prop("checked")) {
                            sum = (sum + arr[0].num * elm.price).toFixed(2);
                        } else {
                            sum = (sum - arr[0].num * elm.price).toFixed(2);
                        }
                        $('.total>span').html('总价:' + sum)
                    });
                });

            }

        });
    }
});