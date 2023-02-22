class AlitzsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
      @alitz = Alitz.all

    # 以下を追記
    if params[:tag2_ids]
      @alitz = []
      params[:tag2_ids].each do |key, value|
        if value == "1"
          tag2_alitzs = Tag2.find_by(name: key).alitzs
          @alitz = @alitz.empty? ? tag2_alitzs : @alitz & tag2_alitzs
        end
      end
    end
    end

   


    def new
        @alitz = Alitz.new
    end
    
      def create
        alitz = Alitz.new(alitz_params)

        alitz.user_id = current_user.id

        if alitz.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @alitz = Alitz.find(params[:id])
      end
    
      
      def edit
        @alitz = Alitz.find(params[:id])
      end
      
      def update
        alitz = Alitz.find(params[:id])
        if alitz.update(alitz_params)
          redirect_to :action => "show", :id => alitz.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        alitz = Alitz.find(params[:id])
        alitz.destroy
        redirect_to action: :index
      end
      
      def michiannai
        @michiannais = Alitz.where(category:"michiannai") 
      end
    
      def kaiwa
        @kaiwas = Alitz.where(category:"kaiwa") 
      end
    
      def komatta
        @komattas = Alitz.where(category:"komatta") #ここがポイント！categoryのバリューがkomattaの投稿を取得！
      end

      def ichiran
       @alitzs = Alitz.all
      end

      def about
      end

      private
    def alitz_params
        params.require(:alitz).permit(:phrase, :translation, :read, :category, :body, :cotent, tag_ids: [],tag2_ids: [])
    end

end

  
