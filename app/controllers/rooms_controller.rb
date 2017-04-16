class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    @messages = MessageDecorator.decorate_collection(
                  Message.order(created_at: :desc).limit(10)
                ).reverse
  end
end
