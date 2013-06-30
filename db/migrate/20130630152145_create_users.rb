class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.binary :admin
      t.binary :interviewee
      t.string :password
      t.string :rememberToken

      t.timestamps
    end
  end
end
