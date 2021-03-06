ActiveAdmin.register Article do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  
  permit_params :title, :feature_image, :brief, :content, :tag_list, :admin_user_id

  index do
    column "Mã số", :id
    column "Tên", :title, :sortable => :id
    column :tag_list
    actions
  end

  form do |f|
    f.inputs "Chi tiết hành tinh" do
      f.input :title, :hint => 'Title'
      f.input :feature_image, :hint => 'Image respresent for an article'
      f.input :brief, :hint => 'Introduce about article', :as => :text
      f.input :tag_list, :hint => 'Comma separated'
      f.input :admin_user, :label => 'Author', :hint=> 'Pick your name, will be display as author'
      f.input :content, :as => :ckeditor
    end
    f.actions
  end

end
