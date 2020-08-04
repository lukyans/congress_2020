class HomeController < ApplicationController
  def index
    @members = Member.where(state: params[:state])
    @current_state_members = params[:current_state_members]
  end

  def sort_asc
    state = params[:state]
    @members = Member.where(state: state).order(name: :asc)
  end

  def sort_desc
    state = params[:state]
    @members = Member.where(state: state).order(name: :desc)
  end
end
