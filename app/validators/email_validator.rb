class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    suffix = value.partition('@').last
    unless Domain.pluck(:suffix).include? suffix
      record.errors[attribute] << (options[:message] || "Is not a valid institutional email.")
    end
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "Is not in valid email format.")
    end
  end
end