require_relative 'user_repository'

class GroupRepositorySequel
  include Datamappify::Repository

  for_entity Group
  default_provider :Sequel

  references :users, :via => UserRepositorySequel
end
