class TestUserLoginZeroZeroFourController < Devise::SessionsController
  def create
    resource = User.find_by email: params[:user].try(:[], :email)

    if resource && (resource.valid_password?(params[:user][:password]))
      sign_in(resource_name, resource)
      render json: { data: resource }, status: 201
    else
      render json: {
        errors: ["Your email or password is incorrect"], status: 200
      }
    end
  end
end