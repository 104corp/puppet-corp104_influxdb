require 'spec_helper_acceptance'

describe 'install corp104_influxdb' do
  context 'default parameters' do
    it 'should install package' do
      pp = "class { 'corp104_influxdb': }"

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end

  context 'change node version' do
    it 'should install package' do
      pp = <<-EOS
        class { 'corp104_influxdb':
          version => '1.7.2-1'
        }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
end
