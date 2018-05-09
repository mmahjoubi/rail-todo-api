Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createTodo, field: Mutations::CreateTodo.field
  field :deleteTodo, field: Mutations::DeleteTodo.field
  field :editTodo, field: Mutations::EditTodo.field

end
