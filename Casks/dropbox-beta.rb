cask 'dropbox-beta' do
  version '45.3.90'
  sha256 'a2d078ecd4bff3fe72e527d6ced59b92f22ca6eac100b288221df947bc04cdc4'

  # dropbox.com was verified as official when first introduced to the cask
  url "https://www.dropbox.com/download?build=#{version}&plat=mac&type=full"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016'

  auto_updates true
  conflicts_with cask: 'dropbox'

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox',
            launchctl:  'com.dropbox.DropboxMacUpdate.agent'

  zap trash: [
               '/Library/DropboxHelperTools',
               '~/.dropbox',
               '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
               '~/Library/Application Support/Dropbox',
               '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
               '~/Library/Caches/com.dropbox.DropboxMacUpdate',
               '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
               '~/Library/Caches/com.getdropbox.dropbox',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate',
               '~/Library/Containers/com.getdropbox.dropbox.garcon',
               '~/Library/Dropbox',
               '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
               '~/Library/Logs/Dropbox_debug.log',
               '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
               '~/Library/Preferences/com.dropbox.DropboxMonitor.plist',
               '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
               '~/Library/Preferences/com.getdropbox.dropbox.plist',
             ]
end
