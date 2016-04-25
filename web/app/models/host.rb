class Host < ActiveRecord::Base
    has_many :services
    has_many :interfaces
end
