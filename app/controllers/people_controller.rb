  class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @community = Community.find(params[:community_id])
  end

  def edit
    @community = Community.find(params[:community_id])
    @person = @community.people.find(params[:id])
  end

  def create
    @community = Community.find(params[:community_id])
    @people = @community.people.create(person_params)
    redirect_to @community
    flash[:notice] = 'La persona ha sido creada'
  end

  def update
    @community = Community.find(params[:community_id])
    @person = @community.people.find(params[:id])
    @person.update_attributes(person_params)
    redirect_to @community
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  private
  def person_params
    params.require(:person).permit(:name, :surname, :gender, :mail, :phone)
  end
end
