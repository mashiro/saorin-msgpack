require 'spec_helper'

describe Saorin::Dumpable do
  describe '#to_msgpack' do
    it { expect(Saorin::Dumpable.instance_methods).to include(:to_msgpack) }
  end
end
