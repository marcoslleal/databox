require "spec_helper"

describe Databox::Pipeline do

  let(:pipeline){ Databox::Pipeline.new "pipe_visits" }

  context "simple" do
    before {
      stub_request(:post, /push/)
      .to_return { request_from "multiple_message" }
    }

    before do
      pipeline.add "Step I.",   2000
      pipeline.add "Step II.",  1600
      pipeline.add "Step III.", 999
      pipeline.add "Step IV.",  100
    end

    it { expect(pipeline.save).to be_true }

  end

end
