const productsHide = document.querySelectorAll(".product-table-hide");

for (let i = 0; i < productsHide.length; i++) {
  productsHide[i].addEventListener("click", (e) => {
    const productId = e.target.dataset.index;
    e.target.parentElement.parentElement.style = "display: none";
    const url = "ajax.php?id_product=" + productId + "&method=hide";
    const type = "GET";
    sendAjax(type, url);
  });
}

const sendAjax = (type, url) => {
  const request = new XMLHttpRequest();
    request.open(type, url);
    request.setRequestHeader("Content-Type", "application/x-www-form-url");
    request.addEventListener("readystatechange", () => {
      if (request.readyState === 4 && request.status === 200) {
        console.log("success");
      }
    });
    request.send();
}

let timerId;
const sendProductQuantity = (quantity, productId) => {
  const url = "ajax.php?product_quantity=" + quantity + "&product_quantity_id=" + productId + "&method=set_product_quantity";
  const type = "GET";
  clearTimeout(timerId);
  timerId = setTimeout(sendAjax, 1000, type, url);
}

const productIncrease = document.querySelectorAll(".product-increase");
const productDecrease = document.querySelectorAll(".product-decrease");

for (let i = 0; i < productIncrease.length; i++) {
  productIncrease[i].addEventListener("click", (e) => {
    const siblingElement = e.target.nextElementSibling;
    const productId = siblingElement.dataset.quantityIndex;
    const quantity = Number(++siblingElement.innerText);
    sendProductQuantity(quantity, productId);
  })
}

for (let i = 0; i < productDecrease.length; i++) {
  productDecrease[i].addEventListener("click", (e) => {
    const siblingElement = e.target.previousElementSibling;
    const productId = siblingElement.dataset.quantityIndex;
    const quantity = Number(--siblingElement.innerText);
    sendProductQuantity(quantity, productId);
  })
}
