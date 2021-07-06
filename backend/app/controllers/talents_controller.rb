class TalentsController < ApplicationController

    def index
        @talents = Talent.all
        
        render json: @talents
    end

end
