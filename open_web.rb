# -*- coding: utf-8 -*-
#webで当該ツイートを見る

Plugin.create(:open_tweet) do
  command(:open_tweet,
          name: 'このツイートをwebで見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("https://twitter.com/#{msg.message.user.idname}/status/#{msg.message.message.id}")
    end
  end
end
