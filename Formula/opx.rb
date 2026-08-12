class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.1.1_darwin_arm64.tar.gz"
      sha256 "960e1a0d236b434c7bcb447fc1d405f7db3e7f9fc29e1c9d8d3dbdf39db236e2"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.1.1_darwin_amd64.tar.gz"
      sha256 "0152415e46570ca578ffb0b7bdc57fad225b7999e88c1dfbb1f69c4d510d7292"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
