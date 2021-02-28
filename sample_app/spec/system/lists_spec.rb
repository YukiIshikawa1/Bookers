#frozen_string_literal: true

require 'rails_helper'

describe '投稿テスト'do
  let!(:list) { creast(:list, title:'hoge', body:'')}
  describe 'トップ画面(Top_path)のテスト' do
    before do
      visit top_path
end
context '表示の確認'do
  it 'トップ画面(top_path)に「ここはTopページです」が表示されてるか' do
    expect(page).to have_content 'ここはTopページです'
  end
  it 'top_pathが"/top"であるか' do
    expect(current_path).to eq('/top')
  end
 end
end

 describe '投稿画面テスト' do
   defore do
     visit todolist_new_path
   end
   context '表示の確認' do
     it 'todolist_new_pathが"todolist/new"であるか' do
       expect(current_path).to eq('/todolist/new')
     end
     it '投稿ボタンが表示されるか' do
       expect(page).to have_button '投稿'
     end
   end
   context '投稿処理のテスト' do
     it '投稿後の投稿後のレダイレクト' do
       fill_in 'list[title]', with: Faker::Lorem.characters(number:5)
       fill_in 'list[body]', with: Faker::Lorem.characters(number:20)
       click_botton '投稿'
       expect(page).to have_content_path todolist_path(List.last)
     end
   end
 end


 end