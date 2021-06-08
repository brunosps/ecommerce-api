module Admin::V1
  class StatusController < ApiController
    def index
      render json: { online: true, time: Time.zone.now.round }
    end
  end
end
