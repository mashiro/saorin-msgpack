require 'spec_helper'
require 'saorin/test'
require 'saorin/server/rack'

describe Saorin::Server::Rack do
  include Saorin::Test
  include_context 'setup rpc server client', {
    :server => {:formatter => MessagePack},
    :client => {:formatter => MessagePack},
  }
  it_should_behave_like 'rpc communicatable'
end
