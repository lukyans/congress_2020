class HomeController < ApplicationController
  def index
    @members = Member.all
    @current_state_members = params[:current_state_members]
  end
end
