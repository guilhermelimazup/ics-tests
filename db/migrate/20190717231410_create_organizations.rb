class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :cnpj
      t.string :name
      t.string :social_name
      t.string :state_registration
      t.string :legal_responsible
      t.string :cpf
      t.string :subdomain

      t.timestamps
    end
  end
end
