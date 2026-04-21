# frozen_string_literal: true

class Lsau < Formula
  desc "List installed Audio Units grouped by publisher"
  homepage "https://github.com/grimdork/lsau"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.1/lsau_0.1.1_Darwin_arm64.tar.gz"
      sha256 "29f18b4e5eb2e1c8e5419faec3ab14c5dd801a1838f644902fa78a662ecc0d85"

      def install
        bin.install "lsau"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/grimdork/lsau/releases/download/v0.1.1/lsau_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "c728ec0fcdae7b6bbb830fb0af3be6e4cda60efd83d495e022129f52a1200409"

      def install
        bin.install "lsau"
      end
    end
  end

  test do
    assert_match "Usage: lsau", shell_output("#{bin}/lsau -h")
  end
end
