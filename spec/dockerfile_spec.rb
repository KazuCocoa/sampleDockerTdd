require 'spec_helper'

describe 'Sample Images' do

  before :context do
    @image = Docker::Image.all.detect{|image| image.info['Repository'] == 'kazucocoa/sample'}
  end

  it 'should exist' do
    expect(@image).not_to be_nil
  end
end