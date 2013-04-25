module CategoriesHelper

  def category_find
    @category = Category.find(params[:id])
  end
  
end
