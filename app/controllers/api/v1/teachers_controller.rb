module Api
    module V1
        class TeachersController < ApplicationController
            protect_from_forgery with: :null_session

            def index
                teachers = Teacher.all
                render json: TeacherSerializer.new(teachers).serialized_json
            end

            def create
                teacher = Teacher.new(teacher_params)
                if teacher.save
                    render json: TeacherSerializer.new(teacher).serialized_json
                else
                    render json: { error: teacher.errors.messages }, status: 422
                end
            end

            def destroy
                teacher = Teacher.find(params[:id])
                
                if teacher.destroy 
                    head :no_content
                else
                    render json: { error: teacher.erros.messages }, status: 422
                end
            end

            private 

            def teacher_params
                params.require(:teacher).permit(:name, :title, :username, :email, :passport_no, :country)
            end
            
        end
    end
end