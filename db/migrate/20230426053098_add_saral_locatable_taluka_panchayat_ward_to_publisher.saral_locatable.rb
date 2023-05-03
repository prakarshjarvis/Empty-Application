# This migration comes from saral_locatable (originally 20211126201235)
class AddSaralLocatableTalukaPanchayatWardToPublisher < ActiveRecord::Migration[6.1]
    def up
        if ENV['IS_MASTER']
          execute "ALTER PUBLICATION #{ENV['PUBLISHER_NAME']} ADD TABLE saral_locatable_taluka_panchayat_wards"
        end
    end

    def down
        if ENV['IS_MASTER']
          execute "ALTER PUBLICATION #{ENV['PUBLISHER_NAME']} DROP TABLE saral_locatable_taluka_panchayat_wards"
        end
    end
end
