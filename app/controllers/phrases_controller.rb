class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.order(:id).page(params[:page])
  end

  def new
    @phrase = Phrase.new
  end
  
  def create
    if is_logged_in?
      @phrase = Phrase.new(create_phrase_params)
      @current_user.phrases << @phrase
      redirect_to @phrase
    else
      alert_js :error
    end
  end

  def edit
    @phrase = Phrase.find(params[:id])
  end

  private
  def create_phrase_params
    params.require(:phrase).permit(:label, :abbrev, :text)
  end

end