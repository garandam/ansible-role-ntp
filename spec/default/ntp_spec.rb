require 'spec_helper'

describe package('ntp'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('ntpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/ntp.conf') do
  it { should exist }
  its(:content) {should match /server 0.pool.ntp.org iburst/ }
  its(:content) {should match /server 1.pool.ntp.org iburst/ }
  its(:content) {should match /server 2.pool.ntp.org iburst/ }
  its(:content) {should match /server 3.pool.ntp.org iburst/ }
end
