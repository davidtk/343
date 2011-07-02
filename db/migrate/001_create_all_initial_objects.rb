class CreateAllInitialObjects < ActiveRecord::Migration
  def self.up

    # object tables

    create_table :contents do |t|
      t.string :type
      t.string :title		# single table inheritance
      t.integer :author_id
      t.integer :editor_id
      t.integer :quay_id
      t.text :body
      t.string :dearx		# for mailbag type
      t.string :fromx		# for mailbag type
      t.timestamps
    end
    create_table :users do |t|
      t.string :username
      t.string :realname
      t.string :email
      t.timestamps
    end
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    create_table :permissions do |t|
      t.string :name
      t.timestamps
    end
    create_table :interactions do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    create_table :analytics do |t|
      t.integer :content_id
      t.integer :interaction_id
      t.integer :user_id
      t.timestamps
    end
    create_table :quays do |t|
      t.string :name
      t.string :contenttype
      t.string :status
      t.timestamps
    end

    # join tables

    create_table :roles_users, :id => false do |t|
      t.integer :role_id
      t.integer :user_id
    end
    create_table :permissions_roles, :id => false do |t|
      t.integer :permission_id
      t.integer :role_id
    end

    # extra indexes

    add_index :roles_users, [:user_id, :role_id], :unique => true
    add_index :permissions_roles, [:permission_id, :role_id], :unique => true

  end

  def self.down
    drop_table :contents
    drop_table :users
    drop_table :roles
    drop_table :permissions
    drop_table :interactions
    drop_table :analytics
    drop_table :quays
    drop_table :roles_users
    drop_table :permissions_roles
  end
end
