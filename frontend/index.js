let productList = document.querySelector('#product-list')
let JSONify = (res) => res.json()
let checkOutBtn = document.querySelector('.checkout-btn')
let cartList = document.querySelector("#cart-list")
let pastOrders = document.querySelector("#prev-id")
let ordersList = document.querySelector("#order-list")
window.cart = []
fetch("http://localhost:3000/products")
    .then(JSONify)
    .then((productsArray) => {
        productsArray.forEach((product) => {
            productList.innerHTML += `<b data-id=${product.id}> 
            <b> ${product.name} </b>
            <br>
            <img src="${product.image}">
            <br>
            ${product.price}
            <button id="button-${product.id}" data-id=${product.id} class="buy-btn"> Add to Cart </button>
            `          
           //STEP 1TEST buy button... button should add product to the window.cart
        })
    })


productList.addEventListener("click", (evt) => {
    if(evt.target.className === "buy-btn"){
        
        let productID = evt.target.dataset.id
        window.cart.push(productID)
        
                
        fetch(`http://localhost:3000/products/${productID}`)
        .then(JSONify)
        .then((product) => {
            console.log(product)
            

            //In cart list add the list of items
            cartList.innerHTML += `<b data-id=${product.id}> 
                <b> ${product.name} </b>
                <br>
                <img src="${product.image}">
                <br>
                ${product.price}`
        })
    }
})




//STEP 2 iterate though the window.cart and show each product on the Items list on the cart in INDEX.html
//do not need anything in the order_products controller.


//step 3 search through the cart to remove the cart
//I know I have a cart with Product ID, and I have a cart List/ 
//How do I take that whole cart list and put it in to the back end to localhost:3000/orders




checkOutBtn.addEventListener("click", (evt) => {
    
    fetch("http://localhost:3000/orders", {
        method: "POST",
        headers: {
            'content-type' : 'application/json'
        },
        body: JSON.stringify({
            products: window.cart
        })
    })
    .then(JSONify)
    .then((orderCheckOut) => {
        if (window.cart = []){
        cartList.innerHTML = "Congratulations you have checked out!"
        ordersList.innerHTML += `<li> ${orderCheckOut.id}</li>`
        }
    })
   
})
//SHOW previous orders for cart
//FETCH from local host orders 



fetch("http://localhost:3000/orders")
    .then(JSONify)
    .then((ordersArray) => {
        ordersArray.forEach((order) => {
            ordersList.innerHTML += `<li data-id="${order.id}">${order.id}</li>`
        })
    })

ordersList.addEventListener("click", (evt) => { 
    if (evt.target.tagName === "LI"){
        evt.preventDefault()
        let orderId = evt.target.dataset.id 
        
        fetch(`http://localhost:3000/orders/${orderId}`)
            .then(JSONify)
            .then((orderObj) => {
                pastOrders.innerHTML = `<button data-id="order-${orderId}">REFUND</button>`
                orderObj.products.forEach((product) => {
                    pastOrders.innerHTML += `<li data-id="${product.id}"> ${product.name} </li>`
                })   
                
                let refundButton = document.querySelector(`#order-${orderId}`)
            })    
    }
})

refundButton.addEventListener("click", (evt) => {
    evt.preventDefault()
    console.log("hi",evt.target)
    fetch(`http://localhost:3000/orders/${orderId}`, {
        method: "DELETE"
    })
})

//<button id="button-${product.id}" data-id=${product.id} class="buy-btn"> Add to Cart </button>

//DELETE 
//CHOOSE FROM PREVIOUS ORDERS AND "REQUEST REFUND"

//UPDATE
//1. EITHER update the name of the cart
//2. update price LMAO
//3. update name