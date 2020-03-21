class AddBasicInfoToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sex, :integer
    add_column :users, :nickname, :string
    add_column :users, :residence, :integer
    add_column :users, :birthday, :date
    add_column :users, :purpose, :integer
    add_column :users, :annual_income, :integer
    add_column :users, :occupation, :integer
    add_column :users, :height, :integer
    add_column :users, :academic_history, :integer
    add_column :users, :first_dating_spend_cost, :integer
    add_column :users, :period_until_dating, :integer
    add_column :users, :marriage_history, :integer
    add_column :users, :have_child, :integer
    add_column :users, :main_image, :string
    add_column :users, :self_introduction, :text
  end
end
