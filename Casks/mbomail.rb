cask "mbomail" do
  version "1.1.0"
  sha256 "a9cc94503d9ce2b2ec38e20bc158aaefbd1d0c388832e52ecb78045f01f94fb8"

  url "https://github.com/meltforce/MBOMail/releases/download/v#{version}/MBOMail.dmg"
  name "MBOMail"
  desc "Native macOS wrapper for mailbox.org"
  homepage "https://mbomail.meltforce.org"

  depends_on macos: ">= :sequoia"

  app "MBOMail.app"

  zap trash: [
    "~/Library/Preferences/org.meltforce.mboMail.plist",
    "~/Library/Caches/org.meltforce.mboMail",
    "~/Library/WebKit/org.meltforce.mboMail",
    "~/Library/HTTPStorages/org.meltforce.mboMail",
  ]
end
