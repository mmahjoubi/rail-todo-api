Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :todo do
    type Types::TodoType
    argument :id, !types.ID
    description "Find a Todo item given its ID."
    resolve ->(obj, args, ctx) { Todo.find(args.id) }
  end

  field :todos do
    type !types[Types::TodoType]
    description "Find all Todo items."
    resolve -> (obj, args, ctx) { Todo.all }
  end
end
