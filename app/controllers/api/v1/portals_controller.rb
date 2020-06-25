module Api
    module V1
        class PortalsController < ApplicationController
            protect_from_forgery with: :null_session

            def index
                portals = Portal.all
                render json: PortalSerializer.new(portals, options).serialized_json 
            end

            def show
                portal = Portal.find_by(slug: params[:slug])
                render json: PortalSerializer.new(portal, options).serialized_json 
            end

            def create
                portal = Portal.new(portal_params)
                
                if portal.save 
                    render json: PortalSerializer.new(portal).serialized_json
                else
                    render json: { error: portal.errors.messages }, status: 422
                end
            end

            def update
                portal = Portal.find_by(slug: params[:slug])
                
                if portal.update(portal_params) 
                    render json: PortalSerializer.new(portal, options).serialized_json
                else
                    render json: { error: portal.errors.messages }, status: 422
                end
            end

            def destroy
                portal = Portal.find_by(slug: params[:slug])
                
                if portal.destroy 
                    head :no_content
                else
                    render json: { error: portal.errors.messages }, status: 422
                end
            end

            private 

            def portal_params
                params.require(:portal).permit(:name, :description, :semester, :slug, :teacher_id)
            end

            def options
                @options ||= { include: %i[teacher] }
            end
        end
    end
end