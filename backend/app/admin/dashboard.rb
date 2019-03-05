ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Lugares Añadidos Recientemente" do
          ul do
            Place.limit(10).order(created_at: :desc).map do |place|
              li link_to(place.name, admin_place_path(place))
            end
          end
        end
      end

      column do
        panel "Información" do
          para "Bienvenido al portal de administrador de Ticoplaces"
        end
      end
    end
  end
end
