class ChampionsController < ApplicationController
    # protect_from_forgery with: :null_session
    before_action only: %i[ show edit update destroy ]
  
    # GET /champions
    def index
      @champions = Champion.all
      render json: @champions 
    end
  
    # GET /champions/1 or /champions/1.json
    def show
        @champion = Champion.find(params[:id])
        if @champion
            render json: @champion, status: :ok
        else
            render json: { message: 'champion not found' }, status: :not_found
        end
    end
          
    # POST /champions
    def create
      @champion = Champion.create!(champion_params)
        session[:champion_id] = champion.id
        render json: @champion, status: :created
    end
  
    # PATCH/PUT /champions/1 or /champions/1.json
    def update
        @champion = Champion.find(params[:id])
        if @champion
            @champion.update(champion_params)
            render json: @champion, status: :created
        else
            render json: { message: 'champion not found' }, status: :not_found
        end
    end
  
    # DELETE /champions/1 or /champions/1.json
    def destroy
        @champion = Champion.find(params[:id])
        if @champion
          @champion.destroy
          head :no_content
        else
            render json: { message: 'champion not found' }, status: :not_found
        end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_champion
        @champion = Champion.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def champion_params
        params.require(:champion).permit(:name, :image_url, :bio, :email, :phone_no, :linkedin_url, :github_url)
      end
end
