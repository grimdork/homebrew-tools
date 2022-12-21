# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Name < Formula
  desc "Merges functionality of the dirname and basename shell commands with a few extra features."
  homepage "https://github.com/Urethramancer/name"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/name/releases/download/v1.0.0/name_1.0.0_Darwin_arm64.tar.xz"
      sha256 "d44844e7094aba46948faadf9c2737c226fa1deb42bfbd1fa69e592722559c5b"

      def install
        bin.install "name"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/name/releases/download/v1.0.0/name_1.0.0_Darwin_x86_64.tar.xz"
      sha256 "b0b80ee7c7e9f748a3951105c225cfc1c2b6233354cbb14be23e13ed99e9c107"

      def install
        bin.install "name"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/name/releases/download/v1.0.0/name_1.0.0_Linux_x86_64.tar.xz"
      sha256 "67f4aaf00141917f9a929d701488ba6f7a85135935bd8d6ff93486957094c3af"

      def install
        bin.install "name"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grimdork/name/releases/download/v1.0.0/name_1.0.0_Linux_arm64.tar.xz"
      sha256 "fdbdb616c919b53c2ab56accf6a6f349ceb0acc7c8406ecaf1d66407a263fb21"

      def install
        bin.install "name"
      end
    end
  end
end
