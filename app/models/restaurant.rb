class Restaurant < ApplicationRecord
  CATEGORY = %w(Chinese Italian Japanese French Belgian)

    has_many  :reviews, dependent: :destroy
    validates :name, :address, :phone_number, presence: true
    validates :category, inclusion: { in: CATEGORY }
end
