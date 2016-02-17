
RailsAdmin.config do |config|

  # checks to see who can access admin panel
  config.authorize_with do
    redirect_to main_app.login_path unless current_admin.try(:admin?)
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  config.current_user_method(&:current_admin)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    # custom fields for rails admin
    config.model 'RiskBalloonGame' do
      edit do
        field :inflation_rate
        field :max_inflation
        field :cash_multiplier
        field :balloon_color, :color
      end
    end

    config.model 'Admin' do
      edit do
        field :first_Name
        field :last_Name
        field :email
        field :password
      end
    end

    config.model 'Admin' do
      edit do
        field :first_Name
        field :last_Name
        field :email
        field :password
      end
    end

    config.model 'Research' do
      edit do
        field :name
        field :description
        field :PIN do
          label "PIN"
        end
        field :risk_balloon_games

      end
    end


  end
end
