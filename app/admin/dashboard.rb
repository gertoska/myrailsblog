ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc {I18n.t("active_admin.dashboard")}

  content :title => proc {I18n.t("active_admin.dashboard")} do
    columns do
      column do
        panel "Recent posts" do
          table_for Post.order("id desc").limit(5) do
            column :title do |post|
              link_to post.title, [:admin, post]
            end
            column "Authors", :admin_user
            column :category, :sortable => :category
            column :created_at
          end
          strong (link_to "Show all posts", :posts)
        end
      end
    end

    columns do
      column do
        panel "Categories" do
          table_for Category.order("id desc").limit(5) do
            column :name do |category|
              link_to category.name, [:admin, category]
            end
            column :created_at
          end
          strong (link_to "Show all categories", :categories)
        end
      end
    end
  end
end
