class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました" #　 <-任意で
        post_index_path  #　指定したいパスに変更
    end
  
end
