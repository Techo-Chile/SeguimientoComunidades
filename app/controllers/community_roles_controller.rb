class CommunityRolesController < ApplicationController
  def show
    @community_roles = Community_role.all
  end
end
