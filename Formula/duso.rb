class Duso < Formula
  desc "Batteries Included Server Engine"
  homepage "https://duso.rocks"
  license "Apache-2.0"
  version "1.6.21"

  on_macos do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.6.21/duso-macos-intel.zip"
      sha256 "f1b3c76c9e07a77be2d807fc43656419aa9fe23d2f84bd8b82821afc216297ea"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.6.21/duso-macos-silicon.zip"
      sha256 "cb3ea481d17e47ae87ade97f78fdaf8f44ecc99e29af18652316700e96ad03c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/duso-org/duso/releases/download/v1.6.21/duso-linux-amd64.tar.gz"
      sha256 "cf8e2eb11d5e4e1258b912df4795da7651aac7a6ab759d7fac3a23b411f9f927"
    end
    on_arm do
      url "https://github.com/duso-org/duso/releases/download/v1.6.21/duso-linux-arm64.tar.gz"
      sha256 "e8d83a8f14826a2d849c9d706259cd9654728de7541c687e0ab9bf8a0fc335b1"
    end
  end

  def install
    bin.install "duso"
  end

  test do
    system "#{bin}/duso", "-version"
  end
end