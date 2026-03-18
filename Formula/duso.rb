class Duso < Formula
  desc "Scripting language for AI agent orchestration"
  homepage "https://github.com/duso-org/duso"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v0.22.16-331/duso-macos-intel.tar.gz"
      sha256 "7b6d27dcf231e626f9e13c248cfff0da4844362ed68e04e06bc655f16d0cc901"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v0.22.16-331/duso-macos-silicon.tar.gz"
      sha256 "97dd2f7975766a98544f5ff3479f04c6dfc53eb2d96da45c19637a7e49ca4e0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v0.22.16-331/duso-linux-amd64.tar.gz"
      sha256 "c2298cdf29d13ee56e231c4161cdc540780cc92fb6136c1b117f042bfe4debb2"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v0.22.16-331/duso-linux-arm64.tar.gz"
      sha256 "1a3a975766fa77266e9da3917dc11cc00cad4b822c55a3c09e0e189961d04109"
    end
  end

  def install
    bin.install "duso"
  end

  test do
    system "#{bin}/duso", "-version"
  end
end