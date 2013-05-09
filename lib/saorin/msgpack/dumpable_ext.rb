require 'saorin'
require 'msgpack'

module Saorin
  module Dumpable
    def to_msgpack(*args)
      to_h.to_msgpack(*args)
    end
  end
end
