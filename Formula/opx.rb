class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.2.0_darwin_arm64.tar.gz"
      sha256 "463f8b977e2ed66ad6374b0e2d3404f0a78b262856b79262e06d7e079fb4b020"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.2.0_darwin_amd64.tar.gz"
      sha256 "93e6257f6bddc8300993eab0e2c3a0d870d0d50348e6d26c5cb771722ed9effa"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
