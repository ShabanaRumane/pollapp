# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    #byebug
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    #byebug
    @orders = ShopifyAPI::Order.find(:all)
    @order_date = @orders.select{|order| I18n.l order.processed_at.to_time, format: "%m/%d/%Y" == '2019-11-28' }
    #@users = ShopifyAPI::User.find(:all)
    #@analytics = ShopifyAPI::Analytic.find(:all)

    @orders_qty = Hash.new(0)
    @orders.each do |order|
      order.line_items.each do |lineitem|
        puts "order# - #{order.order_number}"
        puts "Product id - #{lineitem.product_id}"
        puts "Quantity - #{lineitem.quantity}"
        @orders_qty[lineitem.product_id] += lineitem.quantity
      end
    end  

    
  end
  def newpage

  end
  def reversestring
    #render :json => params[:key]
    render text: 'Thank you!'
  end
end
