ActiveAdmin.register User do
  filter :email
  filter :username
  filter :person
  filter :created_at
  filter :person_first_name, as: :string, label: "Nombre"
  filter :person_last_name, as: :string, label: "Apellido"
  remove_filter :person

  permit_params :id,
                :email,
                :username,
                person_attributes: %i[
                  id
                  first_name
                  last_name
                  birth_date
                  phone
                  gender
                  _destroy
                ]

  index do
    selectable_column
    column "Primer Nombre" do |user|
      user.person.first_name if user.person.present?
    end
    column "Apellido" do |user|
      user.person.last_name if user.person.present?
    end
    column :email
    column :sign_in_count
    column :last_sign_in_at
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :id
      row "Primer Nombre" do |user|
        user.person.first_name if user.person.present?
      end
      row "Apellido" do |user|
        user.person.last_name if user.person.present?
      end
      row "Fecha de Nacimiento" do |user|
        user.person.birth_date if user.person.present?
      end
      row "Teléfono" do |user|
        user.person.phone if user.person.present?
      end
      row "Género" do |user|
        user.person.gender if user.person.present?
      end
      row :email
      row :sign_in_count
      row :last_sign_in_at
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs  do
      f.input :email
      f.input :username
      f.input :email
      f.inputs "Información de la persona", for: [:person, f.object.person || Person.new] do |p|
        p.input :first_name
        p.input :last_name
        p.input :birth_date
        p.input :phone
        p.input :gender, as: :radio, collection:
          Person.genders.keys.collect { |gender| [Person.human_enum_name(:gender, gender), gender] }
      end
      f.actions
    end
  end
end
