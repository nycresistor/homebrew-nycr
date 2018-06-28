cask 'epilog' do
  version '1.0.0beta'
  sha256 'c4b8f06cd8b4ef577a7c6e2542c64394faf904692b804805fca7019d3f6c007b'

  url 'https://www.epiloglaser.com/assets/downloads/drivers/mac/epilog-mac-driver.zip'
  name 'EpilogApps'
  homepage 'https://www.epiloglaser.com/company/epilog-mac-driver.htm'

  depends_on formula: 'ghostscript'
  depends_on macos: '>= :lion'

  container nested: 'EpilogApps.dmg'

  pkg 'EpilogInstaller_Signed.pkg'

  uninstall pkgutil: 'com.epilog.pkg.*'

  zap trash: [
               '/Library/Printers/Epilog',
               '/Library/Printers/PPDs/Contents/Resources/EpilogPDE.ppd',
               '/Library/Printers/PPDs/Contents/Resources/EpilogPDE.gz'
             ]
end
