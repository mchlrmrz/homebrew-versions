cask :v1 => 'intellij-idea-eap' do
  version '143.116.4'
  sha256 'c17b93e8cfb2dde33aadeed9bf403cf1575455c49af5ac658459290830ada068'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+15+EAP'
  license :commercial

  app 'IntelliJ IDEA 15 EAP.app'

  zap :delete => [
		  '~/Library/Preferences/com.jetbrains.intellij.plist',
                  '~/Library/Application Support/IntelliJIdea15',
                  '~/Library/Preferences/IntelliJIdea15',
                  '~/Library/Caches/IntelliJIdea15',
                  '~/Library/Logs/IntelliJIdea15',
                 ]
end
