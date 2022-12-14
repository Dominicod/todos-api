# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe 'Relationships' do
    it { should have_many(:items).dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:created_by) }
  end
end
