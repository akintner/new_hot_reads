class Api::V1::LinksController < BaseController
  def index
    @links = Link.top_ten
  end


  private
    def link_params
      params.require(:link).permit(:url, :title)
    end
end