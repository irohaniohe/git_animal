class RankingController < ApplicationController
    layout 'review_site'
      before_action :ranking
  def ranking
    park_ids = Review.group(:park_id).order('count_park_id DESC').limit(5).count(:park_id).keys
    @ranking = park_ids.map { |id| Park.find(id) }
    # @ranking = Park.limit(5)
    
  end
end
