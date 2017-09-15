require 'spec_helper'
describe 'media' do
  context 'with default values for all parameters' do
    it { should contain_class('media') }
  end
end
