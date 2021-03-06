# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
  has_many :articles

  validates :first_name, :last_name, presence: true

  def full_name
    first_name ||= 'Chris'
    "#{first_name} #{last_name}"
  end

  private

  def first_name
    'Chris'
  end
end
