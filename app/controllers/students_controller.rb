class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
    @student.student_degrees.build.build_degree
		#@user.degrees.bulid
  end

  def create
    @student = Student.new
    @student.name=params[:student][:name]
    @student.mobile=params[:student][:mobile]
    @student.save
    params[:student][:student_degrees_attributes].each do |x|
      StudentDegree.create(student_id:@student.id,degree_id:x[1]["degree_id"],passing_year:x[1]["passing_year"])
    end
    if  @student.persisted?
      respond_to do |format|
        format.html { redirect_to @student, notice: "Student was successfully created."}
        format.json { render :show, status: :created, location: @student }
      end
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to userss_url
  end

  private
  def student_params
    params.require(:student).permit(:name, :mobile, student_degrees_attributes: [:passing_year, degree_attributes: [:name]])
  end 

end
