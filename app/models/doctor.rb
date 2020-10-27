class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  # consultations is a join table
  # the many to many relationship needs a join table
  has_many :patients, through: :consultations

  #PRESENCE VALIDATION

  #1 all doctors must have last_name
  validates :last_name, presence: true

  #2 all doctors must have unique last_name
  validates :last_name, uniqueness: true

  #3 all doctors must have unique first_name and last_name combination
  validates :last_name, uniqueness: {scope: :first_name}
  validates :first_name, uniqueness: {scope: :last_name}


  #LENGTH VALIDATION

  #4 doctor last_name must be at least 3 characteres long
  validates :last_name, length: {minimum: 3}

  # FORMAT VALIDATION

  #5 email must match a regex
  validates :email, format: {with: /\A.*@.*\.com\z/}

end






