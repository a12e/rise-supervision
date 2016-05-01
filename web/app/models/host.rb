class Host < ActiveRecord::Base
    has_many :services
    has_many :interfaces
    accepts_nested_attributes_for :services, allow_destroy: true
    accepts_nested_attributes_for :interfaces, allow_destroy: true
end
