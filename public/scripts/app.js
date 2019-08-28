// $(() => {
//   $.ajax({
//     method: "GET",
//     url: "/api/users"
//   }).done(users => {
//     for (user of users) {
//       $("<div>")
//         .text(user.name)
//         .appendTo($("body"));
//     }
//   });
// });

const clickToAdd = () => {
  $(".menu-item").click(function() {
    $("#myModal").modal("toggle");

    $("#cart-item").html(
      $(this)
        .children(".menu-item-1")
        .html()
    );

    let id = $(this)
      .children(".menu-item-1")
      .data("id");

    $("#cart-item").data("id", id);

    let restoId = $(this)
      .children(".menu-item-2")
      .data("resto-id");

    $("#cart-item").data("restoId", restoId);

    $("#cart-description").html(
      $(this)
        .children(".menu-item-3")
        .html()
    );
    $("#cart-quantity-box").val(1);
    currentPrice = $(".menu-item-2").html();
    currentPrice = (Number(currentPrice.slice(1)) / 1000).toFixed(2);
    $("#cart-total").html("$" + currentPrice);
  });
};

const cartAdd = () => {
  currentVal = $("#cart-quantity-box").val();
  $(".plus-btn").click(function() {
    ++currentVal;
    $("#cart-quantity-box").val(currentVal);
    $("#cart-total").html("$" + (currentVal * currentPrice).toFixed(2));
    let item = $("#cart-item")
      .html()
      .trim();

    orderObj = {
      id: $("#cart-item").data("id"),
      restoId: $("#cart-item").data("restoId"),
      name: $("#cart-item").html(),
      description: $("#cart-description").html(),
      quantity: currentVal,
      price: currentPrice
    };
  });
};

const cartMinus = () => {
  currentVal = $("#cart-quantity-box").val();
  $(".minus-btn").click(function() {
    if (currentVal > 0) --currentVal;
    $("#cart-quantity-box").val(currentVal);
    $("#cart-total").html("$" + (currentVal * currentPrice).toFixed(2));

    orderObj = {
      id: $("#cart-item").data("id"),
      restoId: $("#cart-item").data("restoId"),
      name: $("#cart-item").html(),
      description: $("#cart-description").html(),
      quantity: currentVal,
      price: currentPrice
    };
  });
};

const clearCartByClosingModal = () =>
  $("#myModal").on("hidden.bs.modal", function() {
    currentVal = 0;
    currentPrice = 0;
    $("#cart-quantity-box").val(0);
    $("#cart-total").html("$" + 0.0);
  });

const calculateTotal = dataObj => {
  let total = 0;
  dataObj.forEach(item => {
    total+= item.quantity * Number(item.price);
  })
  return total;
};

const addItemToCart = () => {
  $("#addtocart").submit(e => {
    e.preventDefault();
  });

  $("#add-item").click(function() {
    let cartStorage = JSON.parse(localStorage.getItem("cart"));
    //  need to check orderobj if its null. not added yet
    if (!cartStorage) {
      const tempArr = [];
      tempArr.push(orderObj);
      localStorage.setItem("cart", JSON.stringify(tempArr));
      $("#restaurant-checkout-items").append(
        `<article class="checkout-list">
          <div class="checkout-list-item">
            <div><span id="list-item-${orderObj.id}" class="checkout-list-item-quantity">${orderObj.quantity}</span> x ${orderObj.name}</div>
            <div>$${orderObj.price}</div>
          </div>
          <div>${orderObj.description}</div>
        </article>`
      );
    } else {
      const found = cartStorage.find(
        ele => ele.id === orderObj.id && ele.restoId === orderObj.restoId
      );
      if (found) {
        found.quantity += orderObj.quantity;
        localStorage.setItem("cart", JSON.stringify(cartStorage));
        let updatedItemHtml = $("#list-item-" + orderObj.id);
        let currentQuantity = updatedItemHtml.html();
        updatedItemHtml.html(
          Number(currentQuantity) + Number(orderObj.quantity)
        );
      } else {
        cartStorage.push(orderObj);
        localStorage.setItem("cart", JSON.stringify(cartStorage));

        $("#restaurant-checkout-items").append(
          `<article class="checkout-list">
            <div class="checkout-list-item">
              <div><span id="list-item-${orderObj.id}" class="checkout-list-item-quantity">${orderObj.quantity}</span> x ${orderObj.name}</div>
              <div>$${orderObj.price}</div>
            </div>
            <div>${orderObj.description}</div>
          </article>`
        );
      }
    }
    let updatedCart = JSON.parse(localStorage.getItem("cart"));
    let total = calculateTotal(updatedCart);
    total = total.toFixed(2);
    let tax = (total * 0.13).toFixed(2);
    let totAfterTax = Number(total) + Number(tax);
    totAfterTax = totAfterTax.toFixed(2);

    $(".restaurant-checkout-cart-subtotal-box").html(total);
    $(".restaurant-checkout-cart-tax-box").html(tax);
    $(".restaurant-checkout-cart-total-box").html(totAfterTax);

    $("#myModal").modal("hide");

  });
};

// const checkOutCart = () => {
//   $("#checkout-btn").click(function() {
//     $.ajax({
//       type: "GET",
//       url: "/checkout",
//       data: JSON.parse(localStorage.getItem("cart")),
//       success: function(data) {
//         window.location.href = "/checkout";
//       }
//     });
//   });
// };

const confirmCart = () => {
  $("#checkout-btn").click(function(e) {
    e.preventDefault();
    alert('im in here');
    $.ajax({
      type: "POST",
      url: "/checkout",
      data: { items: localStorage.getItem("cart") },
      success: function(data) {
        console.log("successfully posted data");
        localStorage.removeItem("cart");
      },
      error: function(jqXHR, textStatus, err) {
        console.log("text status " + textStatus + ", err " + err);
      }
    });
  });
};

// main driver function
const mainProgram = () => {
  clickToAdd();
  cartAdd();
  cartMinus();
  clearCartByClosingModal();
  addItemToCart();
  confirmCart();
};

// main
$(document).ready(function() {
  mainProgram();

  //AJAX method to update the page with the time of the order.
  $(".restaurant-confirm").on("click", function(event) {
    event.preventDefault;

    $.ajax({
      method: "POST",
      url: "/home/restaurants/1",
      data: { time: $("#time").val() },
      success: function() {
        $(".estimated-time").text(time.value);
      },
      error: function() {
        alert("An AJAX error has occured");
      }
    });
  });

  // alert((new Date($(".date-value").html())));

  // $(".date-value").html($(this)(new Date($(".date-value").html())));
  $("#categories-container-main a").on("click", e => {
    e.preventDefault();
    let x = $(this.activeElement)[0];
    let y = $(x).attr("data-id");

    $(".side-content-container").css("visibility", "hidden");
    $(`#${y}`).css("visibility", "visible");
  });
});

$(document).ready(() => {
  $(".img-wrapper").hover(function() {
    $(this)
      .find(".fa-arrow-right")
      .css("visibility", "visible");
    // const x = $(this).find(".fa-arrow-right");
    // console.log(x);
  });
  $(".img-wrapper").mouseleave(function() {
    $(this)
      .find(".fa-arrow-right")
      .css("visibility", "hidden");
  });

  $(".button-down").click(function() {
    $("html").animate({ scrollTop: $(document).height() }, "slow");
  });

  $("#landing-page-title").click(function() {
    $(".register").css("transform", "translate(-1px, 0)");
    console.log('fire');
  });
});
