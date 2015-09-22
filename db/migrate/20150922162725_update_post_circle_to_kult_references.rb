class UpdatePostCircleToKultReferences < ActiveRecord::Migration
  def change
    rename_column :posts, :circle_id, :kult_id
  end
end
