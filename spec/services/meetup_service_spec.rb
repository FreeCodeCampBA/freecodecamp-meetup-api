require 'rails_helper'

describe MeetupService do
  describe '.events' do
    subject { described_class.new.events(group_name) }

    context 'without group name' do
      let(:group_name) { '' }

      it 'raises an exception' do
        expect { subject }.to raise_exception(ArgumentError)
      end
    end

    context 'with a valid group name' do
      let(:group_name) { 'freeCodeCampBA' }

      it 'doesn\'t raises an exception' do
        expect { subject }.not_to raise_exception
      end

      it 'returns an array of events' do
        expect(subject).to be_a Array
      end
    end
  end
end
