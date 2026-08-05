class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.1.0_darwin_arm64.tar.gz"
      sha256 "e002570369c7a1708cd63112d9e25f14640bbbdfe1087c0c87f89d35247df380"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.1.0_darwin_amd64.tar.gz"
      sha256 "3c39cbdaa28ba19c783ee53f77adbc28a116856f568e5d3946ba980fa3a9f600"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
