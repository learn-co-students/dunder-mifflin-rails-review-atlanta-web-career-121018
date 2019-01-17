class DogsController < ApplicationController
  before_action :set_dog, only: [:show]

  def index
    @dogs = Dog.all
  end

  def ordered
    @dogs = Dog.all.sort_by { |dog| dog.employees.count }
    render :index
  end

  def show
    @employees = @dog.employees
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

end
