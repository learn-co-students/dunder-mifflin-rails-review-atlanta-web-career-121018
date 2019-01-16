class DogsController < ApplicationController
  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
  end

  def index
    @dogs = Dog.all
  end

end
