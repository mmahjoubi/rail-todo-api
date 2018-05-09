Mutations::CreateTodo = GraphQL::Relay::Mutation.define do
  name "CreateTodo"

  input_field :title, !types.String
  input_field :description, !types.String

  return_field :createdTodo, Types::TodoType

  resolve ->(obj, inputs, ctx) {
    todo = Todo.create(
      title: inputs[:title],
      description: inputs[:description],
    )
    {createdTodo: todo}
  }
end