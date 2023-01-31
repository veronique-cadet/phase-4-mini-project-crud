class SpicesController < ApplicationController

    def index
    render json: Spice.all
    end 
        
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
      end

      def update
        spice = Spice.find(id: params[:id])
        render json: spice.update(spice_params)
     end
    
     def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
      end

    private 

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end


end
