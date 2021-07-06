class PlayerClassesController < ApplicationController

    def index
        @player_classes = Player_Class.all
        
        render json: @player_classes
    end

end
