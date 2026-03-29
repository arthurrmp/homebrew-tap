cask "quicklookgltf" do
  version "1.0.0"
  sha256 "d2ac78b071a5cf5c2b45f61efd42785523ceaa93ce4b20fa7f4db8ed5849f59b"

  url "https://github.com/arthurrmp/QuickLookGLTF/releases/download/v#{version}/QuickLookGLTF.zip"
  name "QuickLookGLTF"
  desc "Quick Look extension for previewing glTF and GLB 3D model files"
  homepage "https://github.com/arthurrmp/QuickLookGLTF"

  depends_on macos: ">= :ventura"

  app "QuickLookGLTF.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/QuickLookGLTF.app"]
    system_command "/usr/bin/open",
                   args: ["#{appdir}/QuickLookGLTF.app"]
    system_command "/usr/bin/qlmanage", args: ["-r"]
  end

  zap trash: [
    "~/Library/QuickLook/QuickLookGLTF.app",
  ]
end
