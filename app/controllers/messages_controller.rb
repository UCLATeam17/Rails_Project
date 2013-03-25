class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      NotificationsMailer.new_message(@message).deliver
      redirect_to root_url, notice: "Message sent! You will recieve a reply within 24 hours. Thank You."
    else
      render "new"
    end
  end
end