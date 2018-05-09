Mutations::EditTodo = GraphQL::Relay::Mutation.define do
  name "EditTodo"

  input_field :todoId, !types.ID
  input_field :title, types.String
  input_field :description, types.String
  input_field :completed, types.Boolean

  return_field :editedTodo, Types::TodoType

  resolve ->(obj, inputs, ctx) {
    todo = Todo.find(inputs[:todoId])
    todo.update(title: inputs[:title]) unless inputs[:title].nil?
    todo.update(description: inputs[:description]) unless inputs[:description].nil?
    todo.update(completed: inputs[:completed]) unless inputs[:completed].nil?
    {editedTodo: todo}
  }
end