class Todo
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :completed, type: Boolean, default: false
end
