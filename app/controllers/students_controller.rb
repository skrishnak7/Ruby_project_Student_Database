
class StudentsController < ApplicationController

  layout 'application'
  def index
    @student= Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create

     @student =Student.new(student_params)
    if(!@student.Student_id.empty? && !@student.first_name.empty? && !@student.email.empty? && !@student.phone.empty? && !@student.address.empty?)
     if @student.save
       redirect_to(:action => 'index')
     else
        render('new')
     end
    else
      flash[:notice]="values not entered properly"
      redirect_to(:action => 'new')
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    #Instantiate a new object using form  parameters
    @student = Student.find(params[:id])

    #save the object
    if @student.update_attributes(student_params)
      # If save succeeds, redirect to the index action
      flash[:notice] = " Student Details Updated"
      redirect_to(:action => 'show',:id => @student.id)
      # If save fails , redisplay the form so User can fix the problem
    else
      render('edit')
    end
  end

  def delete
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = " User deleted"
    redirect_to(:action => 'index')
  end

  private

  def student_params
    params.require(:student).permit(:Student_id,:first_name,:last_name,:email,:phone,:address)
  end

end

