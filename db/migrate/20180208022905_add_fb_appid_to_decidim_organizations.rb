class AddFbAppidToDecidimOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_organizations, :fb_appid, :string
  end
end
