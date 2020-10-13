class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.import(file)
    CSV.forEach(file.path, headers: true) do |row|
      ApplicationRecord.create! row.to_hash
     end
    end
end
