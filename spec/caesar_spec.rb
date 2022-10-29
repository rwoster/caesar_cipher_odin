require "./main.rb"

RSpec.describe CaesarCipher do

  describe "#initialize" do
    context "it creates new instance of CaesarCipher" do
      it "should initialize default text" do
        cipher = CaesarCipher.new("Hello, world")
        expect(cipher.text).to eql("Hello, world")
      end

      it "should initialize default shift value" do
        cipher = CaesarCipher.new("Hello, world")
        expect(cipher.shift).to eql(1)
      end
    end
  end

  describe "#encrypt" do
    context "it encrypts message with shift" do
      it "lowercase encryption" do
        cipher = CaesarCipher.new("abcde")
        expect(cipher.encrypt).to eql("bcdef")
      end
      it "uppercase encryption" do
        cipher = CaesarCipher.new("ABCDE")
        expect(cipher.encrypt).to eql("BCDEF")
      end
      it "returns non-alpha characters" do
        cipher = CaesarCipher.new("!?&#123")
        expect(cipher.encrypt).to eql("!?&#123")
      end
    end
  end

  describe "#decrypt" do
    context "it decrypts an encrypted message" do
      it "uppercase decryption" do
        cipher = CaesarCipher.new("BCDEF")
        expect(cipher.decrypt).to eql("ABCDE")
      end
      it "lowercase decryption" do
        cipher = CaesarCipher.new("bcdef")
        expect(cipher.decrypt).to eql("abcde")
      end
      it "returns non-alpha characters" do
        cipher = CaesarCipher.new("!?&$")
        expect(cipher.decrypt).to eql("!?&$")
      end
    end
  end
  
 


  
end