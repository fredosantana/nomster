class CommentsController < ApplicationController
    before_action :authenticate_user!
    def create
<<<<<<< HEAD
        @place = Place.find(params[:place_id])
        @place.comments.create(comment_params.merge(user: current_user))
=======
        @place = Place.find(params[:place_id])    

@place.comments.create(comment_params.merge(user: current_user))
>>>>>>> 4f4577d132102eeaa35fb3a37641914140bc1fe6
        redirect_to place_path(@place)
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:message, :rating)
    end
end
