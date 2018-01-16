module Lita
  module Handlers
    class Repeat < Handler
      # insert handler code here
      route /^lita\s+(.+)/, :lita_help, help: { 'lita TEXT': 'Lita hepls you.' }

      def lita_help( response )
        word = response.matches[0][0]
        response.reply("こんにちは。あなたは #{word}と書きました")
      end

      Lita.register_handler(self)
    end
  end
end
