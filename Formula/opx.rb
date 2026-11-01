class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.4.0_darwin_arm64.tar.gz"
      sha256 "d4da21e4acf60347d5322ade324fc787b20a6821c430268ca876ac55e665351f"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.4.0_darwin_amd64.tar.gz"
      sha256 "4c9577fbb9ba9f58213a2a345e2d3ad33277527c2c2fca586af814f1c78f67b3"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
