class Duso < Formula
  desc "Scripting language for AI agent orchestration"
  homepage "https://github.com/duso-org/duso"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v0.18.19-268/duso-macos-intel.tar.gz"
      sha256 "d648b7d9af4da216846126578a8f8e174f2dc510473b3ce7abc8ae4e43427eac"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v0.18.19-268/duso-macos-silicon.tar.gz"
      sha256 "bb6a7c7c8005583f3a17410bde9253a574696c36362c6354f356bc134aea4d92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v0.18.19-268/duso-linux-amd64.tar.gz"
      sha256 "6c7ea0f37a91f9434035e682becddf57555a422dfd2c2278bc13b231a0ca1d5d"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v0.18.19-268/duso-linux-arm64.tar.gz"
      sha256 "85c9a6eea2c6c462ebdd2cd214947cddd55ef976249205fee35debe311c1cc21"
    end
  end

  def install
    bin.install "duso"
  end

  test do
    system "#{bin}/duso", "-version"
  end
end