cask "quicklookgltf" do
  version "1.2.0"
  sha256 "d9ae3b9a96b5c14dd7255f9ee084f1c31334174a260fbfb1ac4bfc3c119dcbec"

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
