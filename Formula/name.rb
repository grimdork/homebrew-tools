class Name < Formula
  desc "Small utility for path/name manipulation"
  homepage "https://github.com/grimdork/name"
  url "https://github.com/grimdork/name/releases/download/v1.4.0/name_v1.4.0_darwin_arm64.tar.gz"
  version "1.4.0"
  sha256 "1029b33585cf5ef9d4b928705b9ecc6220071e1b8b202347097b67fb96a73ce9"
  license "MIT"

  def install
    if File.exist?("name")
      bin.install "name"
    elsif File.exist?("name/name")
      bin.install "name/name"
    else
      odie "Expected binary 'name' not found in the archive"
    end
  end
end
