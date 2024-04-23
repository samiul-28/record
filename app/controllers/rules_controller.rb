class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end

  def show
    @rule = Rule.find(params[:id])
  end

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(rule_params)
    if @rule.save
      redirect_to @rule
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
   @rule = Rule.find(params[:id])
  end

  def update
    @rule = Rule.find(params[:id])
    if @rule.update(rule_params)
      redirect_to @rule
    else
      render :new, status: :unprocessable_entity
    end

  end

  def destroy
    @rule = Rule.find(params[:id])
    @rule.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def rule_params
      params.require(:rule).permit(:title, :body)
    end
end

