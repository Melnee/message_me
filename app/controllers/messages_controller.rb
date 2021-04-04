class MessagesController < ApplicationController
    before_action :require_user

    def create
        #the build method creates a message with params and inserts into messages array for user
        message = current_user.messages.build(message_params)
        if message.save 
            redirect_to root_path
        end
    end

    private

    def message_params
        params.require(:message).permit(:body)
    end

end
