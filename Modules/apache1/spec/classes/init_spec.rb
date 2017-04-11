require 'spec_helper'
describe 'apache1' do
  context 'with default values for all parameters' do
    it { should contain_class('apache1') }
  end
end
