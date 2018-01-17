class DomainValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
      record.errors[attribute] << (options[:message] || "Is not a valid domain.")
    end
  end
end