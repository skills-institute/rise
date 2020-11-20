require 'administrate/field/base'

class StaticPageContentField < Administrate::Field::Base
  def to_s
    data
  end
end
