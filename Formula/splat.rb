# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Splat < Formula
  desc ""
  homepage ""
  version "0.4.3-pre13"
  license "AGPL"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/splat/releases/download/v0.4.3-pre13/splat_0.4.3-pre13_darwin_amd64.tar.gz"
      sha256 "7c4a105f4b3d53046c8261282063e34ddea45ceadd8fa583141331bf01e373ca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleSpinup/splat/releases/download/v0.4.3-pre13/splat_0.4.3-pre13_darwin_arm64.tar.gz"
      sha256 "5e3eb6c61721d9f44658a87291687951c743472ee4b78c94798b8440571db0cb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleSpinup/splat/releases/download/v0.4.3-pre13/splat_0.4.3-pre13_linux_amd64.tar.gz"
      sha256 "760d11a78f21fd922628320d7f2a79de250613e1b00aebe8a6288381fc29b2a9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleSpinup/splat/releases/download/v0.4.3-pre13/splat_0.4.3-pre13_linux_arm64.tar.gz"
      sha256 "f5cf80f270ee2314e93712180ec8ae65734a1982de0f5a26d4c31285a38b2b60"
    end
  end

  def install
    bin.install "splat"
  end
end
