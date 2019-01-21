class PortfoliosController < ApplicationController
    before_action :find, only: [:show, :edit, :update, :destroy]
    layout 'portfolio'
    access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all


    def index 
        @items = Portfolio.all
    end

    def angular 
        @angular_items = Portfolio.angular
    end

    def new 
        @item = Portfolio.new 
        3.times{@item.technologies.build}
    end

    def create 
        @item = Portfolio.new(portfolio_params)
        
        respond_to do |format|
            if @item.save 
              format.html { redirect_to portfolio_show_path(@item), notice: 'Portfolio was successfully created.' }
            else
              format.html { render :new }
            end
          end
    end
    
    def update
        respond_to do |format|
          if @item.update(portfolio_params)
            format.html { redirect_to portfolio_show_path(@item), notice: 'Portfolio was successfully updated.' }
          else
            format.html { render :edit }
          end
        end
      end
    
      def destroy
        @item.destroy
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
        end
      end

    def show 
    end

    def edit 
      3.times{@item.technologies.build}
    end

    def find 
        @item = Portfolio.find(params[:id])
    end

    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
    end
end
