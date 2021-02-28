#frozen_string_literal: true

require 'rails_helper'

describe 'モデルのテスト' do
  it "有効なデータはどこに保存されているか" do
   expect(FactoryBot.build(:list)) .to be_valid
  end
end