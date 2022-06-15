let carts = document.querySelectorAll('.btn');

let products = [{

    name:'Burger',
    tag : 'burger',
    price : 70,
    inCart: 0 
},
{

    name:'Cheese Nuggets',
    tag : 'cheesenuggets',
    price : 150,
    inCart: 0 
},
{

    name:'Chicken',
    tag : 'chicken',
    price : 270,
    inCart: 0 
},
{

    name:'Farmhouse Pizza',
    tag : 'farmhousepizza',
    price : 375,
    inCart: 0 
},
{

    name:'Cookies',
    tag : 'cookies',
    price : 60,
    inCart: 0 
},
{

    name:'Chicken nuggets',
    tag : 'chickennuggets',
    price : 170,
    inCart: 0 
},
{

    name:'Margherita Pizza',
    tag : 'margheritapizza',
    price : 320,
    inCart: 0 
},
{

    name:'Chicken Burger',
    tag : 'chickenburger',
    price : 250,
    inCart: 0 
},
{

    name:'Pancakes',
    tag : 'pancakes',
    price : 140,
    inCart: 0 
},
{

    name:'Waffle and Ice-cream',
    tag : 'waffle',
    price : 230,
    inCart: 0 
},
{

    name:'Waffle',
    tag : 'waffle',
    price : 100,
    inCart: 0 
},
{

    name:'Cupcakes',
    tag : 'cupcakes',
    price : 50,
    inCart: 0 
},
{

    name:'Mojito',
    tag : 'mojito',
    price : 300,
    inCart: 0 
},
{

    name:'Breakfast Bowl',
    tag : 'breakfastbowl',
    price :280,
    inCart: 0 
},
{

    name:'Lemonade',
    tag : 'lemonade',
    price : 170,
    inCart: 0 
}

];
for(let i=0;i < carts.length;i++){
    carts[i].addEventListener('click', () => {
        cartNumbers(products[i]);
    })
}

function cartNumbers(product){
    let productNumbers = localStorage.getItem('cartNumbers');

    productNumbers = parseInt(productNumbers);

    if(productNumbers){
         localStorage.setItem('cartNumbers',productNumbers+1);
         document.querySelector('.fas fa-shopping-cart span').textContent = 1;
    }else{
        localStorage.setItem('cartNumbers',1);
        document.querySelector('fas fa-shopping-cart span').textContent= 1;
    }

    setItems(product);
}

function setItems(product){
    console.log("My product is ",product);
}