class CreateTrailTripJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :trail_trips do |t|
      t.belongs_to :trails, foreign_key: true
      t.belongs_to :trips, foreign_key: true
    end
  end
end
