require "rails_helper"

describe "Status", type: :request do
  let(:user) { create(:user) }

  it "tests status" do
    get "/admin/v1/status", headers: auth_header(user)
    expect(body_json).to include("online" => true)
    expect(body_json).to include("time" => Time.zone.now.round)
    expect(response).to have_http_status(:ok)
  end
end
