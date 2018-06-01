class CreateTrailTripJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :trail_trips do |t|
      t.belongs_to :trail, foreign_key: true
      t.belongs_to :trip, foreign_key: true
    end
  end
end
