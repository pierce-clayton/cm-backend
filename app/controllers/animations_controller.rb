class AnimationsController < ApplicationController
  before_action :set_animation, only: [:show, :update, :destroy]

  # GET /animations
  def index
    @animations = Animation.all

    render json: @animations
  end

  # GET /animations/1
  def show
    render json: @animation
  end

  # POST /animations
  def create
    @animation = Animation.new(animation_params)

    if @animation.save
      render json: @animation, status: :created, location: @animation
    else
      render json: @animation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animations/1
  def update
    if @animation.update(animation_params)
      render json: @animation
    else
      render json: @animation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animations/1
  def destroy
    @animation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animation
      @animation = Animation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animation_params
      params.require(:animation).permit(:nickname, :length, :user_id, :song, :background)
    end
end
