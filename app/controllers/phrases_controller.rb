class PhrasesController < ApplicationController
  def index
    @phrases = Phrase.order(:id).page(params[:page])
  end

  def new

  end
  
  def create
  end

end
