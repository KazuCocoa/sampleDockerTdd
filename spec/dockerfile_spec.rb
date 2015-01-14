require 'spec_helper'

describe 'Sample Images' do

  before :all do
    @image = Docker::Image.all.detect{|image| image.info['RepoTags'] == ['kazucocoa/docker_tdd:latest']}
  end

  it 'should exist' do
    expect(@image).not_to be_nil
  end
end