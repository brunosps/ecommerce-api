module Admin::V1
    class ApiController < ApplicationController
        include Authenticable

        def status
            render json: { online: true, time: Time.now }
        end
    end
end
