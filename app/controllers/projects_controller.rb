class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.create(project_params(:name, :creator, :number_of_backers))
        redirect_to project_path(@project)
    end

    def show
    end

    def edit
    end
    
    def update
        @project.update(project_params(:name, :number_of_backers))
        redirect_to project_path(@project)
    end

    def destroy
        @project.delete
        redirect_to projects_path
    end

    private
    def project_params(*args)
        params.require(:project).permit(*args)
    end

    def set_project
        @project = Project.find(params[:id])
    end

end
