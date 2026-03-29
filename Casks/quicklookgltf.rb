cask "quicklookgltf" do
  version "1.0.0"
  sha256 "b8a95bc8faa6b9c19277704a8663a8cd7517c077efb23db62a76632a76af2c2b"

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
