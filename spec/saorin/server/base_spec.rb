require 'spec_helper'

describe Saorin::Server::Base do
  class Handler
    def add(a, b)
      a + b
    end
  end

  class Server
    include Saorin::Server::Base
  end

  let(:server) { Server.new Handler.new, :formatter => MessagePack }

  it 'returning msgpack format' do
    request = Saorin::Request.new 'add', [1, 2], :id => 123
    input = MessagePack.dump request
    output = server.process_request input
    expect { MessagePack.load output }.to_not raise_error
  end
end
