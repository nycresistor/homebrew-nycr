cask 'epilog' do
  version '1.0.0beta'
  sha256 'f198d808f5200af2347578ba65562968876bffbda7632355cda504e16165eed7'

  url 'https://www.epiloglaser.com/assets/downloads/drivers/mac/epilog-mac-driver.zip'
  name 'EpilogApps'
  homepage 'https://www.epiloglaser.com/company/epilog-mac-driver.htm'

  depends_on formula: 'ghostscript'
  depends_on macos: '>= :sierra'

  container nested: 'EpilogApps.dmg'

  pkg 'EpilogInstaller_Signed.pkg'

  uninstall pkgutil: 'com.epilog.pkg.*'

  zap trash: [
               '/Library/Printers/Epilog',
               '/Library/Printers/PPDs/Contents/Resources/EpilogPDE.ppd',
               '/Library/Printers/PPDs/Contents/Resources/EpilogPDE.gz'
             ]
end
