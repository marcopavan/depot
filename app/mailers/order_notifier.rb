class OrderNotifier < ActionMailer::Base
  default from: "Sam Ruby"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #

  def  invalid_access
    mail to: 'marcopavan83@gmail.com', subject: 'Attempt to access invalid product'
  end

  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end

  def  ship_date_notification(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipping Estimation'
  end

end
