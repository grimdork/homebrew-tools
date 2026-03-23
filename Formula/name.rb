class Name < Formula
  desc "Small utility for path/name manipulation"
  homepage "https://github.com/grimdork/name"
  url "https://github.com/grimdork/name/releases/download/v1.4.0/name_v1.4.0_darwin_arm64.tar.gz"
  version "1.4.0"
  sha256 "acd093c89d2e786a0075b7ca1fd921a088816fc2fdf79484a5a84362dd749ebc"
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
