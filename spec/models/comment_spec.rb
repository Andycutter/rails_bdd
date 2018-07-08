require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe 'Database' do
    it { is_expected.to have_db_column :id } 
    it { is_expected.to have_db_column :email } 
    it { is_expected.to have_db_column :content }
  end
end
