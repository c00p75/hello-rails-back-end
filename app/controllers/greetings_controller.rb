class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[show update destroy]
  # GET /greetings/1
  def show
    @message = Greeting.random.first
    render json: @message
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_greeting
    @greeting = Greeting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def greeting_params
    params.require(:greeting).permit(:message)
  end
end
