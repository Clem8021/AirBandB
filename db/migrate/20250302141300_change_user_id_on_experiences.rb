class ChangeUserIdOnExperiences < ActiveRecord::Migration[7.1]
  def change
    change_column_null :experiences, :user_id, true
  end
end
