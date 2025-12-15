# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true do
      argument :id, ID, required: true
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true do
      argument :ids, [ID], required: true
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    field :current_user, Types::UserType, null: false,
      description: "Returns the currently authenticated user"

    def current_user
      context[:current_user] ||
        raise(GraphQL::ExecutionError, "Unauthorized")
    end
  end
end
