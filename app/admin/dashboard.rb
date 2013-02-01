ActiveAdmin.register_page "Dashboard" do



  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

  section "Newly Added One Time Customers" do
    table_for InstantCustomer.order("created_at desc").limit(5) do
        column :emp_no
        column :name
        column "email",:e_mail
        column :phone
        column "Joined On",:created_at
    end
    strong{ link_to "View All One time customers",admin_instant_customers_path}
end


section "Newly Added One Year Customers" do
    table_for OneyearCustomer.order("created_at desc").limit(5) do
        column :emp_no
        column :name
        column "email",:e_mail
        column :phone
        column "Joined On",:created_at
    end
    strong{ link_to "View All One Year customers",admin_oneyear_customers_path}
end

section "Newly Added Two Year Customers" do
    table_for TwoyearCustomer.order("created_at desc").limit(5) do
        column :emp_no
        column :name
        column "email",:e_mail
        column :phone
        column "Joined On",:created_at
    end
    strong{ link_to "View All Two Year customers",admin_twoyear_customers_path}
end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
