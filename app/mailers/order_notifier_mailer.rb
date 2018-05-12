class OrderNotifierMailer < ApplicationMailer
  default from: 'Brave Pham <dungpa93@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
  def received(order)
    @greeting = "Hi"

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
  def shipped(order)
    @greeting = "Hi"

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
