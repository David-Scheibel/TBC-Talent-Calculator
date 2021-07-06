class BuildsController < ApplicationController

    def index
        @builds = Build.all
        
        render json: @builds
    end

end
