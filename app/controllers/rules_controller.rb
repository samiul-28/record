class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end

  def show
    @rule = Rule.find(params[:id])
  end

  # def new
  # end

  # def create
  # end

  # def edit
  # end

  # def update
  # end
end
