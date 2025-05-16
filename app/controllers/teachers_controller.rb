class TeachersController < ApplicationController
  def index
    teachers = Teacher.all

    render json: teachers
  end

  def create
    teacher = Teacher.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      subject: params["subject"]
    )

    render json: teacher
  end

  def show
    teacher = Teacher.find(params["id"])

    render json: teacher
  end

  def update
    teacher = Teacher.find(params["id"])

    teacher.update(
      first_name: params["first_name"] || teacher.first_name,
      last_name: params["last_name"] || teacher.last_name,
      subject: params["subject"] || teacher.subject
    )

    render json: teacher
  end

  def destroy
    teacher = Teacher.find(params["id"])

    teacher.destroy

    render json: { message: "Teacher deleted" }
  end
end
