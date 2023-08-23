class SupportsController < ApplicationController
  def index
    @users = User.all
    # @elderlies = current_user.elderlies
    # @trusted_users = current_user.supports_as_trusted_user
    @supports = policy_scope(Support).where(trusted_user: current_user)
  end

  def show
    @support = current_user.supports_as_trusted_user.find(params[:id])
    authorize @support
  end

end
