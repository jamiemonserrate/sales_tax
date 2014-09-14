require 'spec_helper'

describe Float do
  context '#round_to_nearest' do
    it 'should round up to nearest 0.05' do
      expect(1.00.round_to_nearest(0.05)).to eq(1.0)
      expect(1.04.round_to_nearest(0.05)).to eq(1.05)
      expect(1.06.round_to_nearest(0.05)).to eq(1.10)
    end
  end
end