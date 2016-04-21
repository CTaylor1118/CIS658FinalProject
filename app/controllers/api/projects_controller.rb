class Api::ProjectsController < ApplicationController
  protect_from_forgery with: :null_session
  respond_to :js 

  def all_projects
    @projects = current_user.projects.all
  end

  # GET /projects
  # GET /projects.json
  def index
    @projects = current_user.projects.all
    format.json {status: :ok, location: @projects }
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    
  end


  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.json { render :show, status: :created, location: @project }
      else
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.json { render :show, status: :ok, location: @project }
      else
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    #
    #respond_to do |format|
    # format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:version, :name, :image, :user_id)
    end
end

end
