module AreasHelper

  def area_find
    @area = Area.find(params[:id])
  end
  
end
