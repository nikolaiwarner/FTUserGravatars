ActionController::Dispatcher.to_prepare(:user_system_gravatar) do
  User.send :include, UserSystem::Gravatar::UserModelMixin
end

# View Extensions
#if defined?(ViewExtender)
  ViewExtender.register(
    'dashboard/member/show/detail_list',
    :bottom,
    'dashboard/member/show/detail_list/user_system_gravatar',
    :partial => 'dashboard/member/show/detail_list'
  )
#end