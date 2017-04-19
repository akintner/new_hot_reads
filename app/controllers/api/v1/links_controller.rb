class Api::V1::LinksController < BaseController
  def index
    @links = Link.top_ten
    render json: @links
  end

  def create
    @link = Link.find_or_initialize_by(link_params)
    @link.read_count += 1
    if @link.save
      render json: @link
    else
      render status: 404
    end
  end


  private
    def link_params
      params.require(:link).permit(:url, :title)
    end
end