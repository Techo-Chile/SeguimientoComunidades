class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
  end

  def new
    @community = Community.new
  end

  def edit
    @community = Community.find(params[:id])
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      redirect_to @community
      flash[:notice] = 'La comunidad ha sido creada'
    else
      render 'new'
    end
  end

  def update
    @community = Community.find(params[:id])

    if @community.update(community_params)
      redirect_to @community
      flash[:notice] = 'La comunidad ha sido editada  '
    else
      render 'edit'
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    flash[:notice] = 'La comunidad ha sido eliminada  '

    redirect_to communities_path
  end

  private
  def community_params
    params.require(:community).permit(:name, :location_id, :status_id, :person_rol_id )
  end
end
