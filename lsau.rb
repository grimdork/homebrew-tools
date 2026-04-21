# frozen_string_literal: true

class Lsau < Formula
  desc "List installed Audio Units grouped by publisher"
  homepage "https://github.com/grimdork/lsau"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.0/lsau_0.1.0_Darwin_arm64.tar.gz"
      sha256 "76f67a6181aaef61b15664c3d26e931eda891e8778a6917be1dad40a1dc1887c"

      def install
        bin.install "lsau"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.0/lsau_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "6e49be021a83eeec627576e15890aeafe311cb53ed3d67e6fbdedba782b05fdf"

      def install
        bin.install "lsau"
      end
    end
  end

  test do
    assert_match "Usage: lsau", shell_output("#{bin}/lsau -h")
  end
end
