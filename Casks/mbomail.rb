cask "mbomail" do
  version "1.0.2"
  sha256 "d5a5ae53d3baceb9a800ba5c26546d05d096a8cb184fcb94f9a4a0be05430cab"

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
