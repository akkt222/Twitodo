
RSpec.describe TweetsController, type: :controller do
  describe "GET tweets_search_path" do
    subject { get tweets_search_path }

    specify {
      subject
      expect(response).to have_http_status 200
    }
  end

end
