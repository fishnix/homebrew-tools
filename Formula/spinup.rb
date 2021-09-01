# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spinup < Formula
  desc "Simple command line interface for spinup"
  homepage "https://github.com/YaleSpinup/spinup-cli"
  version "0.4.0-pre03"
  license "AGPL-3.0-or-later"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.0-pre03/spinup-cli_0.4.0-pre03_darwin_amd64.tar.gz"
      sha256 "a306efacd98d1575784f75bd4c69cbc71f509a56d03184c26b8c72bed041bd79"
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.0-pre03/spinup-cli_0.4.0-pre03_darwin_arm64.tar.gz"
      sha256 "f2533d489e7b78e9dd8dced417756f6e7e44857bcd67d74f748f5e943d7b19b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.0-pre03/spinup-cli_0.4.0-pre03_linux_amd64.tar.gz"
      sha256 "a07578eb03ed2838a4630b71b2ce764b6f0bac3f4238ec1e4ddfd19c90c269be"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/spinup-cli/releases/download/v0.4.0-pre03/spinup-cli_0.4.0-pre03_linux_arm64.tar.gz"
      sha256 "9a45d78c4c0e05f8b1d5a6b855fe16b5909f55dbab2b6462921e2db9d70c0943"
    end
  end

  def install
    bin.install "spinup"
  end

  test do
    system "#{bin}/spinup", "version"
  end
end
