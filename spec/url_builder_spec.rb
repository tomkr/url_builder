# frozen_string_literal: true

require 'spec_helper'

describe UrlBuilder do
  describe '#new' do
    it 'can be instantiated with a string' do
      expect(described_class.new('example.com')).to be_a(described_class)
    end

    it 'prepends https if it has no scheme' do
      expect(described_class.new('example.com').to_s).to match(/https:/)
    end

    it 'does not prepend https if it has a scheme' do
      expect(described_class.new('http://example.com').to_s)
        .to_not match(/https:/)
    end
  end

  describe '#expand' do
    subject { described_class.new('example.com') }

    it 'can have a path appended' do
      expect(subject.expand('path')).to eq('https://example.com/path')
    end

    it 'can have a query appended' do
      expect(subject.expand('', q: 'a', r: 'b'))
        .to eq('https://example.com?q=a&r=b')
    end
  end
end
