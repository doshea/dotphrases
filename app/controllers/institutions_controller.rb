class InstitutionsController < ApplicationController

  #GET /institutions or institutions_path
  def index
    @institutions = Institution.order(:id).page(params[:page])
  end

  #DELETE /institution or institution_path
  def destroy
    # TODO fix
    puts 'HUZZAH'
  end
end