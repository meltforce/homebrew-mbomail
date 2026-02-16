cask "mbomail" do
  version "1.0.1"
  sha256 "ded2183f8ae52c19c736d2df5f79e60d3d9afc0d289c66870243ed0ebd53202f"

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
