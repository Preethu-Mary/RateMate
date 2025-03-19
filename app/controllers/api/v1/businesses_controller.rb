module Api 
    module V1
        class BusinessesController < ApplicationController 
            protect_from_forgery with: :null_session

            def index
                businesses = Business.all

                render json: BusinessSerializer.new(businesses, options).serialized_json
            end

            def show
                business = Business.find_by(slug: params[:slug])

                render json: BusinessSerializer.new(business, options).serialized_json
            end

            def create
                business = Business.new(business_params)

                if business.save
                    render json: BusinessSerializer.new(business).serialized_json
                else
                    render json: {error: business.errors.messages}, status: 422
                end
            end

            def update
                business = Business.find_by(slug: params[:slug])

                if business.update(business_params)
                    render json: BusinessSerializer.new(business, options).serialized_json
                else
                    render json: {error: business.errors.messages}, status: 422
                end
            end

            def destroy
                business = Business.find_by(slug: params[:slug])

                if business.destroy
                    head :no_content
                else
                    render json: {error: business.errors.messages}, status: 422
                end
            end

            private

            def business_params
                params.require(:business).permit(:name, :image_url)
            end

            def options
                @options ||= {include: %i[reviews]}
            end
        end
    end 
end