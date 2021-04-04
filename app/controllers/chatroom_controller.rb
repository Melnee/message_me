class ChatroomController < ApplicationController
    #helper method from ApplicationController
    before_action :require_user

    def index
        @messages = Message.all
    end
end