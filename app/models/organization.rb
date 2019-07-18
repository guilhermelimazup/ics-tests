class Organization < ApplicationRecord
  after_create :create_tenant

  private

    def create_tenant
      Apartment::Tenant.create('ics')
    end
end
