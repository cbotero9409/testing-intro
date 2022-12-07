class Player
  attr_accessor :credits, :active

  def sub_credits(sub_creds)
    raise_exception StandardError if sub_creds == 0
    @credits = @credits - sub_creds
  end
end
