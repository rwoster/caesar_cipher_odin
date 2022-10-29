class CaesarCipher
  attr_reader :text, :shift
  
  def initialize(text, shift = 1)
    @text = text
    @shift = shift
  end

  def encrypt
    @text.split("").map do |char|
      if uppercase?(char)
        encrypt_uppercase(char)        
      elsif lowercase?(char)
        encrypt_lowercase(char)
      else
        char
      end
    end.join("")
  end

  def decrypt
    @text.split("").map do |char|
      if uppercase?(char)
        decrypt_uppercase(char)
      elsif lowercase?(char)
        decrypt_lowercase(char)
      else
        char
      end
    end.join("")
  end

  private

  # case check
  def lowercase?(char)
    char.ord >= 97 && char.ord <= 122
  end
  def uppercase?(char)
    char.ord >= 65 && char.ord <= 90
  end

  # string encryption
  def encrypt_lowercase(char)
    ((char.ord - 97 + shift) + 97).chr
  end
  def encrypt_uppercase(char)
    ((char.ord - 65 + shift) + 65).chr
  end

  # string decryption
  def decrypt_lowercase(char)
    ((char.ord - 97 - shift) + 97).chr
  end
  def decrypt_uppercase(char)
    ((char.ord - 65 - shift) + 65).chr
  end

end
