class CreateChildPicks < ActiveRecord::Migration[5.0]
  def change
    create_table :child_picks do |t|
      t.integer :child_id
      t.datetime :picked

      t.timestamps
    end
  end
end
