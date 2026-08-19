class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.2.1_darwin_arm64.tar.gz"
      sha256 "cfe08507163d75578cda6e3f572a2b5a30783c1caa8e6173d563ac04db028610"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.2.1_darwin_amd64.tar.gz"
      sha256 "4dbbbb94f537d6d9faaa096043865199825ce974a15c40a544df7569110dd355"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
