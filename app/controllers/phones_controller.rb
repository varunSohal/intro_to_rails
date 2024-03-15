class PhonesController < ApplicationController
  def index
    @phones = if params[:query].present?
                Phone.where("modelname LIKE ?", "%#{params[:query]}%")
              else
                Phone.all
              end
  end
end
