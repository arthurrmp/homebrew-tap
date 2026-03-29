cask "quicklookgltf" do
  version "1.0.0"
  sha256 "e381fe087be653b82eac738ce0537f86c3d02a9a358faa368b4e794eb6239e27"

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
