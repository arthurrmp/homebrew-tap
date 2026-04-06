cask "quicklookgltf" do
  version "1.2.0"
  sha256 "6199ace95878513175d43d16f3cbc1d5b00efe49b0c2ff0ade06bffba9b31bd5"

  url "https://github.com/arthurrmp/QuickLookGLTF/releases/download/v#{version}/QuickLookGLTF.zip"
  name "QuickLookGLTF"
  desc "Quick Look extension for previewing glTF and GLB 3D model files"
  homepage "https://github.com/arthurrmp/QuickLookGLTF"

  depends_on macos: ">= :ventura"

  app "QuickLookGLTF.app"

  postflight do
    system_command "/usr/bin/qlmanage", args: ["-r"]
  end

  zap trash: [
    "~/Library/QuickLook/QuickLookGLTF.app",
  ]
end
