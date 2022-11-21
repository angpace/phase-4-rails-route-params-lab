class StudentsController < ApplicationController

  def index
    # The index should return an array of all the students 
    # If the route is call with a query param, it should return the student that matches
    students =  Student.all
    render json: students 

  end

  def show
    findId = Student.find_by(id: params[:id])
    render json: findId
  end

end
