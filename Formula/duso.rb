class Duso < Formula
  desc "Scripting language for AI agent orchestration"
  homepage "https://github.com/duso-org/duso"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.0.10-402/duso-macos-intel.zip"
      sha256 "6b346229753991703275fa2f5e0342da2cd6029478cd19151a37fc137213caa5"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.0.10-402/duso-macos-silicon.zip"
      sha256 "e701c0dd7d8ca101d521e134d70ffe677857e16abf187659601b35cd96bca9f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.0.10-402/duso-linux-amd64.tar.gz"
      sha256 "45f4fb66a67351b860a62a32f260756fcdad0defe6a64928cbc7c660b9880be6"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.0.10-402/duso-linux-arm64.tar.gz"
      sha256 "eccab386e711f59ce1c775bdc6d86009f1c547be8a0977fcd9b2b981f69643da"
    end
  end

  def install
    bin.install "duso"
  end

  test do
    system "#{bin}/duso", "-version"
  end
end