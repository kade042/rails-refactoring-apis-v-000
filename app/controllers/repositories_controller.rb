class RepositoriesController < ApplicationController
  def index
    @repos_array = current_token.get_repos
  end

  def create
    response = current_token.create_repo(params[:name])
    redirect_to '/'
  end
end
