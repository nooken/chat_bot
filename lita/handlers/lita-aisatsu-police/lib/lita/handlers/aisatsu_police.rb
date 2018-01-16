module Lita
  module Handlers
    class AisatsuPolice < Handler
      # insert handler code here
      route /^lita\s+.*(おはよう)/, :ohayo, help: { 'lita TEXT': 'Lita hepls you.' }
      route /^lita\s+.*(こんにちは)/, :konichiwa, help: { 'lita TEXT': 'Lita hepls you.' }
      route /^lita\s+.*(こんばんは)/, :kobawa, help: { 'lita TEXT': 'Lita hepls you.' }

      def ohayo(response)
        now_hour = DateTime.now.hour
        case
        when now_hour >= 4 && now_hour < 12
          response.reply('おはようございます。')
        when now_hour >= 12 && now_hour < 17
          response.reply('今は「こんにちは」の時間です！！！')
        else
          response.reply('今は「こんばんは」の時間です！！！')
        end
      end

      def konichiwa(response)
        now_hour = DateTime.now.hour
        case
        when now_hour >= 4 && now_hour < 12
          response.reply('今は「おはよう」の時間です！！！')
        when now_hour >= 12 && now_hour < 17
          response.reply('こんにちは。')
        else
          response.reply('今は「こんばんは」の時間です！！！')
        end
      end

      def kobawa(response)
        now_hour = DateTime.now.hour
        case
        when now_hour >= 4 && now_hour < 12
          response.reply('今は「おはよう」の時間です！！！')
        when now_hour >= 12 && now_hour < 17
          response.reply('今は「こんにちは」の時間です！！！')
        else
          response.reply('こんばんは。')
        end
      end

      Lita.register_handler(self)
    end
  end
end
