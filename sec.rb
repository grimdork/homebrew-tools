# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sec < Formula
  desc "Store secrets in AWS Parameter Store."
  homepage "https://github.com/grimdork/sec"
  version "0.7.2"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/sec/releases/download/v0.7.2/sec_0.7.2_Darwin_x86_64.zip"
      sha256 "4e36241373e0f2e839823d66779932c3262aae943873c41de8003cc26727d4da"
    end
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/sec/releases/download/v0.7.2/sec_0.7.2_Darwin_arm64.zip"
      sha256 "000b1927bbb2f1b8b02cade0135e8bea8f0ca870a57ebfe93be8495dc33dfa72"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/sec/releases/download/v0.7.2/sec_0.7.2_Linux_x86_64.tar.gz"
      sha256 "a43a0b9022c31017ad9cde41054aad4836830d6ae4bf3d0e38cfbc1f291fde78"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grimdork/sec/releases/download/v0.7.2/sec_0.7.2_Linux_arm64.tar.gz"
      sha256 "b7685734a8fc4d009ebce3e1774b67c26429524f79ca4ffadef17bfa7cf597bd"
    end
  end

  def install
    bin.install "sec"
  end
end
