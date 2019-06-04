$(function() {
    $.ajax({
        type: "get",
        url: "../../lib/getshop.php",
        dataType: "json",
        success: function(response) {
            var prolist = $('.prolist');
            var template = '';
            response.forEach(function(elm, i) {
                var pic = JSON.parse(elm.pic);
                template = `
                <a href="details.html?id=${elm.id}">
                    <div class="shop-wrap">
                        <img src="${pic[0].one}" class="shop-img">
                        <div class="shop-info">
                            <p>${elm.title}</p>
                            <div class="price">￥${elm.price}</div>
                        </div>
                        <div class="user-info">
                            <img src="../img/O1CN01QgiCE81PXndbclh3d_!!0-mytaobao.gif" class="user-img">
                            <p>${elm.user}</p>
                            <img src="../img/TB1HCq9GN1YBuNjy1zcXXbNcXXa-168-24.png" class="user-tag">
                        </div>
                    </div>
                </a>
                    `;
                prolist.append(template);
            });
        }
    });
});