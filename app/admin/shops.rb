ActiveAdmin.register Shop do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image, :category_id, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs do
      f.input :title
      f.input :image, :as => :file
      f.input :user
      f.inpit :category_id
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image do |shop|
      image_tag shop.image.url(:small)
    end
    column :title do |shop|
      link_to shop.title, admin_shop_path(shop)
    end
    column :user
    actions
  end

  show do
   attributes_table do
     row :image do |shop|
       image_tag shop.image.url(:medium)
     end
     row :title
     row :user
   end
   active_admin_comments
  end

end
