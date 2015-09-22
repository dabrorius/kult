class UpdateMembershipCircleToKultReferences < ActiveRecord::Migration
  def change
    rename_column :memberships, :circle_id, :kult_id
  end
end
