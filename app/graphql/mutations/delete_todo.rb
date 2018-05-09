Mutations::DeleteTodo = GraphQL::Relay::Mutation.define do
  name "DeleteTodo"

  input_field :todoId, !types.ID

  return_field :deletedTodo, Types::TodoType

  resolve ->(obj, inputs, ctx) {
    todo = Todo.find(inputs[:todoId])
    todo.delete
    {deletedTodo: todo}
  }
end