require 'spec_helper'

describe BlogsController do
  let(:blogs_controller) { BlogsController.new }

  describe 'index' do
    it 'should order no more than 5 blogs as a list' do
      Blog.should_receive(:last).with(5).and_return []
      blogs_controller.index
    end
  end
end
