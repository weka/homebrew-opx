class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.3.0_darwin_arm64.tar.gz"
      sha256 "d279e36446010f85390352d8e9f6936faef2e3713d36302cc40e1e3c3ee8e742"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.3.0_darwin_amd64.tar.gz"
      sha256 "19ec3f662e3765494c245e01a4605f3679bf826068974dc839787b23ec4afaf7"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
