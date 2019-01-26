module ApplicationHelper
    def login_helper(style="")
        if current_user.is_a?(GuestUser)
            (link_to  "Register", new_user_registration_path, method: :get, class: style)+
            " ".html_safe +
            (link_to  "Login", new_user_session_path, method: :get, class: style)
        else
            (link_to  "Logout", destroy_user_session_path, method: :delete, class: style)
        end
    end

    def nav_helper style, tag_type="span"
nav_links= <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_path}" class="#{style}">About me</a></#{tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style}">Contact</a></#{tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style}">Blogs</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style}">Portfolio</a></#{tag_type}>
NAV

    nav_links.html_safe
    end

    def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])

        if alert
            alert_generator alert
        end
    end

    def alert_generator msg
        js add_gritter(msg, title: "Monika Musiał Portfolio", sticky: false)
    end
end
