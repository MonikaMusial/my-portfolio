module ApplicationHelper
    def login_helper(style)
        if current_user.is_a?(GuestUser)
            (link_to  "Register", new_user_registration_path, method: :get, class: style)+
            " ".html_safe +
            (link_to  "Login", new_user_session_path, method: :get, class: style)
        else
            (link_to  "Logout", destroy_user_session_path, method: :delete, class: style)
        end
    end
end