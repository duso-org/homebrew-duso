class Duso < Formula
  desc "Scripting language for AI agent orchestration"
  homepage "https://github.com/duso-org/duso"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.4.3-462/duso-macos-intel.zip"
      sha256 "881a3aa2a4748a37caed78f5ea17d3444406be23a6ca0e98a7dc431af8f31628"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.4.3-462/duso-macos-silicon.zip"
      sha256 "c8af34c5da0a4874b409d1c410e40a5676714bed1f3cdef7517767fd8f7483c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.4.3-462/duso-linux-amd64.tar.gz"
      sha256 "082296b1f311405727502ec4fc7c96760d7ea0278f781e7085e88fc6a98814a5"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.4.3-462/duso-linux-arm64.tar.gz"
      sha256 "a1ed67b85b61f60986bdb1a35de632105aeedaa16651d25985b571c510a58fa2"
    end
  end

  def install
    bin.install "duso"
  end

  test do
    system "#{bin}/duso", "-version"
  end
end