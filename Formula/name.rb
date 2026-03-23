class Name < Formula
  desc "Small utility for path/name manipulation"
  homepage "https://github.com/grimdork/name"
  url "https://github.com/grimdork/name/releases/download/v1.4.0/name_v1.4.0_darwin_arm64.tar.gz"
  version "1.4.0"
  sha256 "2a32bb9e1c070683c4122d57510463e2613d0d2a5f7b4baa19705ec72557d343"
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
