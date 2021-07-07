# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sec < Formula
  desc "Store secrets in AWS Parameter Store."
  homepage "https://github.com/grimdork/sec"
  version "0.8.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/sec/releases/download/v0.8.0/sec_0.8.0_Darwin_x86_64.zip"
      sha256 "5f882adf213cb31b13edc8c9281ad8c26712d97f4e2422bac3fe85f013f7bf43"
    end
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/sec/releases/download/v0.8.0/sec_0.8.0_Darwin_arm64.zip"
      sha256 "3800d57034984ab4bf1f90513dfa080eb5b6520df7b7bcf68bb7876f2bec396c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/sec/releases/download/v0.8.0/sec_0.8.0_Linux_x86_64.tar.gz"
      sha256 "4d664d21c937b385bde2066c890415495b612f1c2e55629bdc460c4a9bc5e693"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grimdork/sec/releases/download/v0.8.0/sec_0.8.0_Linux_arm64.tar.gz"
      sha256 "742a9d2ee29c82a9b43e5affd1afddba4ed04d92e00cd833abf354d34dce99ff"
    end
  end

  def install
    bin.install "sec"
  end
end
