class EmailProcessor
  # def self.process(email)
  #   Post.create!({ body: email.body, email: email.from })
  #   # puts "============================"
  #   # puts "email received"
  #   # puts "============================"
  # end

  def initialize(email)
    @email = email
  end

  def process
    Post.create!({ body: @email.body, email: @email.from[:email] })
  end
end