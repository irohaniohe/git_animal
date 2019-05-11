class TopController < ApplicationController
    def searchone
         @park = Park.where('parkname LIKE(?)', "%#{params[:keyword]}%").limit(20)
    end
    
    def searchtwo
         @products = Text.where('animal LIKE(?)', "%#{params[:keyword]}%").limit(20)
    end
    
    def searchthree
         @user = User.where('yourname LIKE(?)', "%#{params[:keyword]}%").limit(20)
    end


end
