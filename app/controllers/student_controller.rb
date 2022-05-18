class StudentController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @single_student_show = Student.find(params[:id])
    value = 1
  end

  def new
    @add = Student.new
  end

  def create
    added_new_student = Student.new(params.require(:student).permit(:name, :email, :student_avatar))
    if added_new_student.save
      added_user_id = added_new_student.id
      redirect_to "/student/show/#{added_user_id}"
      flash[:notice] = "Student #{added_new_student.name} successfully added"
    else
      redirect_to student_new_path
    end
  end

  def edit
    @edit_student_info = Student.find(params[:id])
  end

  def update

    find_record = Student.find(params[:id])
    if find_record.update(params.require(:student).permit(:name, :email, :student_avatar))
      redirect_to student_show_path(find_record)
      flash[:notice] = "Student #{find_record.name} successfully updated"
    else
      redirect_to student_edit_path
    end
  end

  def destroy
    find_record_for_delete = Student.find(params[:id])
    redirect_to student_index_path if find_record_for_delete.destroy
  end
end
