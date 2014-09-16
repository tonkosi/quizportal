class CreateGroupMemberships < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
    	t.belongs_to :user
    	t.belongs_to :group
    	t.integer :privilege
    	t.timestamp
    end
  end
end
