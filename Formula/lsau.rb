# frozen_string_literal: true

class Lsau < Formula
  desc "List installed Audio Units grouped by publisher"
  homepage "https://github.com/grimdork/lsau"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.2/lsau_0.1.2_Darwin_arm64.tar.gz"
      sha256 "0dc0909952606163e54fe9048b2c76c2115a508f3baec478ac9ccd1055c6e153"

      def install
        bin.install "lsau"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.2/lsau_0.1.2_Darwin_x86_64.tar.gz"
      sha256 "6ce7a49b8c08c0db799b9ecb4fc40ecefd04a211c8703576f6d2c4837c4b883d"

      def install
        bin.install "lsau"
      end
    end
  end

  test do
    assert_match "Usage: lsau", shell_output("#{bin}/lsau -h")
  end
end
