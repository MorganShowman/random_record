require 'active_record'

module RandomRecord
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    # Return an array of random records for a given model
    #
    # @return[Array] of records or nil
    def random(number_of_random_records = 1)
      random_records = []
      number_of_elements = self.all.size

      (0...number_of_random_records).each do
        number_of_elements > 0 ? random_records << self.offset(rand number_of_elements).first : nil
      end

      number_of_random_records > 1 ? random_records : random_records.first
    end
  end
end

ActiveRecord::Base.send(:include, RandomRecord)
