#enconding: utf-8
module ApplicationHelper

  def searcher_authentication
    html = ''
    if searcher_signed_in?
      html << "<li>" <<
         link_to('Logout', destroy_searcher_session_path, :method => :delete) <<
       "</li>"
    else
      html << "<li>" <<
        link_to('Cadastre-se', new_searcher_registration_path, :class => '') <<
      "</li>
      <li> | " <<
          link_to('Acesse seu perfil', new_searcher_session_path, :class => '')<<
      "</li>"
    end
    raw html
  end

  def freelance_authentication
    html = ""
    if freelance_signed_in?
      html << "<li>" <<
          link_to('Editar Perfil ', edit_freelances_profiles_path) <<
          "</li>
          <li> | "<<
         link_to('Logout', destroy_freelance_session_path, :method => :delete) <<
       "</li>"
    else
     html << "<li>" <<
        link_to('Divulgue seus servicos', new_freelance_registration_path, :class => "") <<
      "</li>
      <li> | " <<
          link_to('Acesse seu perfil ',new_freelance_session_path, :class =>'') <<
      "</li>"
    end
    raw html
  end

end
