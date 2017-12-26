Rails.application.routes.draw do
  devise_for :test_users, controllers: {
    sessions: "test_user_login_zero_zero_four",
  }
end
