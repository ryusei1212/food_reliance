class Admins::MealSetsController < Admins::ApplicationController
  before_action :set_meal_set, only: %i[edit update destroy]

  def index
    @meal_sets = MealSet.default_order
  end

  def new
    @meal_set = MealSet.new
  end

  def create
    @meal_set = MealSet.new(meal_set_params)
    if @meal_set.save
      redirect_to edit_admins_meal_set_path(@meal_set), notice: t('controller.created')
    else
      render :new, status: :unprocessable_content
    end
  end

  def edit
  end

  def update
    if @meal_set.update(meal_set_params)
      redirect_to edit_admins_meal_set_path(@meal_set), notice: t('controller.updated')
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @meal_set.destroy!
    redirect_to admins_meal_sets_path, notice: t('controller.destroyed')
  end

  private

  def set_meal_set
    @meal_set = MealSet.find(params[:id])
  end

  def meal_set_params
    params.require(:meal_set).permit(:name, :price, :description, :weight)
  end
end
