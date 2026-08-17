class Opx < Formula
  desc "Terminal explorer for the objects the Weka operator reports to Weka Home"
  homepage "https://github.com/weka/opx"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://weka.github.io/opx/releases/opx_0.1.2_darwin_arm64.tar.gz"
      sha256 "597e2da119ddb7442ac86b991e9a5bc436d91c0c6c1599cc221150307789bd7d"
    end
    on_intel do
      url "https://weka.github.io/opx/releases/opx_0.1.2_darwin_amd64.tar.gz"
      sha256 "c2b4869524b91bb6835ac405c194bc340ebcf622a4ae290b0b5564e81c65920d"
    end
  end

  def install
    bin.install "opx"
  end

  test do
    system "#{bin}/opx", "--version"
  end
end
