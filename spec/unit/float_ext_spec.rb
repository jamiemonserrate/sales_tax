require 'spec_helper'

describe Float do
  context '#round_to_nearest' do
    it 'should round up to nearest 0.05' do
      expect(1.048.round_to_nearest(0.05)).to eq(1.05)
    end

    it 'should round down to nearest 0.05' do
      expect(1.01.round_to_nearest(0.05)).to eq(1.0)
    end
  end
end