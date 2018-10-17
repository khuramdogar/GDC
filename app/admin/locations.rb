ActiveAdmin.register Location do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :location_number, :longitude, :latitute, :elevation, :rock_type, :mineralogy, :strike, :dip, :structural_trenddescription, :images, :group_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
