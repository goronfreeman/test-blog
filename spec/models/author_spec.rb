# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  subject { described_class.new(first_name: 'John', last_name: 'Doe') }

  context 'associations' do
    it { is_expected.to have_many(:articles) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  describe '#full_name' do
    context 'when the first name is blank' do
      it 'returns Chris' do
        expect(subject.full_name).to eq 'Chris Doe'
      end
    end

    context 'when the first name is not blank' do
      it "returns the author's full name" do
        expect(subject.full_name).to eq 'John Doe'
      end
    end
  end
end
