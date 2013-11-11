class CreatePatrons < ActiveRecord::Migration
  def up
	  create_table :patrons do |t|
		  t.string :firstname
		  t.string :lastname
		  t.string :department
		  t.string :notes
		  t.timestamps
  end
  Patron.create(firstname: "Bob", lastname: "Smith", department: "Libraries", notes: "Bob Smith is a Librarian")
  end
  def down
	  drop_table :patrons
  end
end
