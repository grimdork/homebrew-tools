# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pwgen < Formula
  desc "A password generator with a few different variations."
  homepage "https://github.com/grimdork/pwgen"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/pwgen/releases/download/v1.0.4/pwgen_1.0.4_Darwin_x86_64.tar.xz"
      sha256 "8802212ef18aa7b5c71d380b41369df51c549c93bcbfc12ae3a30e3408bc6633"

      def install
        bin.install "pwgen"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/grimdork/pwgen/releases/download/v1.0.4/pwgen_1.0.4_Darwin_arm64.tar.xz"
      sha256 "d9a87b91bf58b6cd2081683efd980040858b015d7f3bd6d1c2eb3baec19b109e"

      def install
        bin.install "pwgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grimdork/pwgen/releases/download/v1.0.4/pwgen_1.0.4_Linux_arm64.tar.xz"
      sha256 "402854d7e2508b46a48bb09b614b5343be091a2e46e57c21ae88a2b0091ece80"

      def install
        bin.install "pwgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/grimdork/pwgen/releases/download/v1.0.4/pwgen_1.0.4_Linux_x86_64.tar.xz"
      sha256 "ded7e7939c11bf7a3b81a6ed6e053762e78aecc99a460a2366291401bfa5a60b"

      def install
        bin.install "pwgen"
      end
    end
  end
end
