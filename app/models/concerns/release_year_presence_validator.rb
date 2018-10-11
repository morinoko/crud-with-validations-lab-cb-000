class ReleaseYearPresenceValidator < ActiveModel::Validator
  def validate(record)
    if record.released
      validates presence: true, message: "%{attribute} cannot be blank if song is released"
    end
  end
end
