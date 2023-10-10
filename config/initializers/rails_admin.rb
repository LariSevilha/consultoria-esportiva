
RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user) 

  config.show_gravatar = false
  
  config.actions do
     ### User ###
     config.model "User" do
      navigation_label "Gerenciar Usuários"
      list do
        field :id
        field :name  
        field :email 
      end
      edit do
        field :name 
        field :email  
      end
    end
    
    config.model "Header" do
      navigation_label "Topo"
      list do
        field :id
        field :icon  
      end
      edit do
        field :icon  
        field :description, :wysihtml5   
      end
    end
    
    config.model "Video" do
      navigation_label "Videos"
      list do
        field :id
        field :title  
      end
      edit do
        field :title  
        field :url 
      end
    end 
    dashboard
    show  

    delete  

    edit

    index

    new  
 
    end
end  