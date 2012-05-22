class GroupsController < ApplicationController
  respond_to :json

  def index
    @groups = groups
    
    respond_with @groups
  end

  protected

    def groups
      Group.all(sort: [[:name, :asc]])
    end
end
