require 'spec_helper'

describe 'aptly::default' do
  describe port(8080) do
    it { should be_listening }
  end

  describe service('aptly_api') do
    it { should be_running }
    it { should be_enabled }
  end
end
