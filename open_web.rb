# -*- coding: utf-8 -*-
# webでプロフィールを開く

Plugin.create(:open_favstar) do
  command(:open_favstar,
          name: 'こいつのプロフィールをwebで見る',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::openurl("https://twitter.com/#{msg.message.user.idname}")
    end
  end
end
