ActiveAdmin.register Satellite do


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

  permit_params :name, :planet_id, :year_discovered, :discoverer, :distance_from_planet, :orbital_period, :avatar, :detail

  index do
    column "Tên", :name, :sortable => :price
    column "Ngày tạo", :created_at
    column "Ngày sửa gần nhất", :modified_at
    actions
  end

end