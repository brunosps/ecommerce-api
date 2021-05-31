module Admin::V1
    class StatusController < ApiController
        def index
            render json: { online: true, time: Time.now }
        end
    end
end
