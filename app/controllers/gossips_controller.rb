class GossipsController < ApplicationController


  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
   @gossip_all = Gossip.all
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    @id = "#{params[:id]}"
    @gossip = Gossip.all.find(@id)
  end

  def new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    
  end

  def create
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
     user = User.create(first_name: params[:author])  
     gossip = Gossip.create(title: params[:title], content: params[:body], user: user)
     redirect_to "/gossips"
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    @id = "#{params[:id]}"
    @gossip = Gossip.all.find(@id)
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
     @gossip = Post.find(params[:id])
     puts params.require(:gossip).permis(:title)
     #@gossip.update(gossip_params) 
   end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end

