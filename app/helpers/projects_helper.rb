module ProjectsHelper

  include SessionsHelper

  def set_current_project(id)
    @current_project = current_user.projects.find_by(id: id)
  end

  def current_project
    @current_project
  end

  def project_set?
    !@current_project.nil?
  end

  def clear_project
    @current_project = nil
  end

end
