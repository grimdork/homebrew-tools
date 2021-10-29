# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Awsec < Formula
  desc "Store secrets in AWS Parameter Store."
  homepage "https://github.com/grimdork/awsec"
  version "0.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/awsec/releases/download/v0.10.3/awsec_0.10.3_Darwin_arm64.tar.xz"
      sha256 "786ff3f7b80d6a080a1fe4b72572a4652613f411584656f385f6a4148c9f2f32"

      def install
        bin.install "awsec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/awsec/releases/download/v0.10.3/awsec_0.10.3_Darwin_x86_64.tar.xz"
      sha256 "47ad489d9584db96efc95159f91c91f5652928f2a7e355cc254efdf3b5b008c6"

      def install
        bin.install "awsec"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grimdork/awsec/releases/download/v0.10.3/awsec_0.10.3_Linux_arm64.tar.xz"
      sha256 "c2250674d97c88a530d8afe91ef3813aef659b1bbb2400dba4229b7e3c5b23b8"

      def install
        bin.install "awsec"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/awsec/releases/download/v0.10.3/awsec_0.10.3_Linux_x86_64.tar.xz"
      sha256 "536bdcc9ccc02232e8164a6a6045c9142d4969c3997643bdec27723cc746bf6d"

      def install
        bin.install "awsec"
      end
    end
  end
end
