class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def name_with_alias
    if self.alias == "none"
      alias_line = ""
    else
      alias_line = " (#{self.alias})"
    end

    "#{self.first_name} #{self.last_name}" + alias_line
  end

  def dog_id=(id)
    self.update(dog: Dog.find(id))
  end

  def dog_id
      self.dog ? self.dog.id : nil
  end
end
