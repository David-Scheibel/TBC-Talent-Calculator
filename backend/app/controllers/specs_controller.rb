class SpecsController < ApplicationController

    def index
        @specs = Spec.all
        
        render json: @specs
    end

end
