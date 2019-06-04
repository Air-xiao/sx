$(function() {
    var id = location.search.split('=')[1];
    $.ajax({
        type: "get",
        url: "../../lib/details.php",
        data: {
            id: id
        },
        dataType: "json",
        success: function(response) {
            var pic = JSON.parse(response.pic);
            var template = `
                <div class="left">
                    <div class="shop">
                        <div class="slider">
                            <div>
                                <img src="${pic[0].one}">
                                <img src="${pic[1].two}">
                                <img src="${pic[2].three}">
                            </div>
                            <span>&lt;</span>
                            <span>&gt;</span>  
                        </div>
                        <ul class="img-list">
                            <li>
                                <img src="${pic[0].one}">
                            </li>
                            <li>
                                <img src="${pic[1].two}">
                            </li>
                            <li>
                                <img src="${pic[2].three}">
                            </li>
                        </ul>
                    </div>
                    <div class="desc">
                        <h2>宝贝介绍</h2>
                        <p>${response.details}</p>
                    </div>
                </div>
                <div class="right">
                    <h1>${response.title}</h1>
                    <p>
                        <span class="para">转&nbsp;&nbsp;卖&nbsp;&nbsp;价：</span>
                        <span>
                            <i>￥</i>
                            <b>${response.price}</b>
                        </span>
                        <span class="refuse">
                            <em></em>该商品拒绝讲价！
                        </span>
                    </p>
                    <ul>
                        <li class="first">
                            <span>成&nbsp;&nbsp;&nbsp;&nbsp;色：</span>
                            <em>全新</em>
                        </li>
                        <li>
                            <span>所&nbsp;&nbsp;在&nbsp;&nbsp;地：</span>
                            <em>浙江金华 义乌市</em>
                        </li>
                        <li>
                            <span>联系方式：</span>
                            <em></em>
                        </li>
                        <li class="way">
                            <span>交易方式：</span>
                            <a href="">在线交易</a>
                        </li>
                        <li class="express">
                            <a href="">至</a>
                            <span>快递:免运费</span>
                        </li>
                    </ul>
                    <div class="num">库存:${response.num}
                            <input type="number" value="1" min="1" max="${response.num}" id="num">
                    </div>
                    <div class="buy">
                        <a href="shopcar.html" class="add">立刻购买</a>
                    </div>
                    <div class="do-more">
                        <div class="share">
                            <a href="javascript:;">分享（0）</a>
                        </div>
                        <div class="good">
                            <a href="javascript:;">赞（0）</a>
                        </div>
                    </div>
                    <div class="jy-rz">
                        <div class="jy">
                            <b class="tit"></b>
                            <span>由支付宝先行保管,验货OK再付款到卖家账户。</span>
                        </div>
                        <div class="rz">
                            <b class="tit"></b>
                            <span>经支付宝核实会员身份和银行账户信息,真实可靠。</span>
                        </div>
                    </div>
                </div>
            </div>
                `;
            $('.prolist').append(template).find('.add').on('click', function() {
                addShopCar(response.id, response.price, $('#num').val());
            });
            $('.slider').slider();
        }
    });

    function addShopCar(id, price, num) {
        var shop = cookie.get('shop'); //从cookie获取shop
        var product = {
            "id": id,
            "price": price,
            "num": num
        };

        if (shop) {
            shop = JSON.parse(shop); // cookie中如果有数据 这个数据是json字符串 转成对象

            if (shop.some(elm => elm.id == id)) {
                shop.forEach(function(elm, i) {
                    elm.id == id ? elm.num = num : null;
                });
            } else {
                shop.push(product);
            }
            cookie.set('shop', JSON.stringify(shop), 1);
        } else {
            shop = [];
            shop.push(product);
            cookie.set('shop', JSON.stringify(shop), 1);
        }
    }
})