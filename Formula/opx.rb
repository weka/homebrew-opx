class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.5.0_darwin_arm64.tar.gz"
      sha256 "3160cbfc05efb40bd33c2eeac4824a688e64946b0306a8e4eecb48e7746da0ca"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.5.0_darwin_amd64.tar.gz"
      sha256 "392c3cbb1ad513716b448936993178cad1fcf82f68ce65cc3636c28ab5ef987c"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
