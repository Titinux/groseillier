class DeviseCreateAdministrators < ActiveRecord::Migration
  def change
    create_table(:groseillier_administrators) do |t|
      t.string :nickname,           null: false, default: ""

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Trackable
      t.integer  :sign_in_count, default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Lockable
      t.integer  :failed_attempts, :default => 0
      t.string   :unlock_token
      t.datetime :locked_at

      t.timestamps
    end

    add_index :groseillier_administrators, :email,                unique: true
    add_index :groseillier_administrators, :nickname,             unique: true
    add_index :groseillier_administrators, :reset_password_token, unique: true
  end
end
