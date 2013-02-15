module ProfilesHelper

  def profile_find
    @profile = Profile.find(params[:id])
  end

end
