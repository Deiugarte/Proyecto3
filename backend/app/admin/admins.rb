ActiveAdmin.register Admin do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column "Correo", :email
    column "Fecha Creación", :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  show do
    attributes_table do
      row :id
      row :email
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
