class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders
    end

    def show 
        order = Order.find(params[:id])
        render json: order
    end

    def create 
        # Once the cart is loaded with the cart data, it will create the order and send the data to the back end
        #check Localhost/3000/orders
        order = Order.create 
        orders_param[:products].each do |product_id|
            product = Product.find(product_id)
            orderProduct = OrderProduct.create(order_id: order.id, product_id: product.id)
        end
        render json: order
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        render json: orders
    end

    private
    
    def orders_param
        params.permit(:products => [])
    end
end
