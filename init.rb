ActionController::Dispatcher.to_prepare(:user_system_gravatar) do
  User.send :include, UserSystem::Gravatar::UserModelMixin
end
