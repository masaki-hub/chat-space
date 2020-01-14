class Api::MessagesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @messages = @group.messages.includes(:user).where('id > ?', params[:last_id]) 
  end
end

    # @message = Message.new
    # group = Group.find(params[:group_id])
    # last_message_id = params[:id].to_i
    # @messages = group.messages.includes(:user).where("id > #{last_message_id}")