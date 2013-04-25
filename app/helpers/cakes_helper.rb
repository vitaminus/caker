module CakesHelper

  def cake_find
    @cake = Cake.find(params[:id])
  end

end
