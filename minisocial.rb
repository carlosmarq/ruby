#red social de usuarios  y posts en texto

class Post

  attr_accessor :body

    def initialize(opts ={})
      @body = opts[:body].to_s
    end

end

class User

  PSW_REGEX = /\A.{8}\z/
  EMAIL_REGEX = /\A[a-zA-Z]+\w*@\w+\.com\z/

  attr_accessor :email, :password, :nickname, :posts


    def initialize(opts ={})
      #@email = opts[:email] ? opts[:email] : abort("Paila-Fail-GameOver No es un email valido")
      @email = opts[:email].to_s                  #convierte el email a string
      .scan(EMAIL_REGEX).any? ?
      #el .scan devuelve el string con el match o un [] vacio. El .any es VERDADERO si el hay algun elemento en el []
      opts[:email] :
      abort("Paila-Fail-GameOver No es un email valido")

      @password = opts[:password].to_s
      .scan(PSW_REGEX).any? ?
      opts[:password] :
      abort("Paila-Fail-GameOver No es un password valido")
      @nickname = opts[:nickname].to_s ? opts[:nickname] : ""
      @posts = opts[:posts].is_a?(Array) ? opts[:posts] : []
      # conciso: (cond) ? Codigo si verdadero : Codigo si falso
    end

    #Crea un post y lo agrega al arreglo de posts
    #parameters opts = {} opts[:body], recibe el body del post de un hash
    def create_post(opts = {})
      self.posts << Post.new(body: opts[:body]) #instancia
    end

    def authenticate(password_submitted)
        self.password == password_submitted.to_s
    end

end


user = User.new(
        email: "user@dominio.com",
        password: "abc12345",
        nickname: "anonimo",
        posts: "dfgdfg"
        )

        puts user.inspect

user.create_post(body: "soy un post dentro de un arreglo")
user.create_post(body: "soy el segundo post en arreglo")
puts user.posts.first.body
puts user.posts.inspect
