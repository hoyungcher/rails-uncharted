ActiveAdmin.register Country do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :iso_3166_1_alpha2, :iso_3166_1_alpha3, :iso_3166_1_numeric, :slug
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :iso_3166_1_alpha2, :iso_3166_1_alpha3, :iso_3166_1_numeric, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
