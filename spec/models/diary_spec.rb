require 'rails_helper'

RSpec.describe 'Diaryモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { create(:user) }
    let!(:diary) { build(:diary, user_id: user.id) }

	  context 'bodyカラム' do
      it '空欄でないこと' do
        diary.body = ''
        expect(diary.valid?).to eq false
      end
      it '200文字以下であること' do
        diary.body = Faker::Lorem.characters(number: 201)
        expect(diary.valid?).to eq false
      end
    end
  end
end