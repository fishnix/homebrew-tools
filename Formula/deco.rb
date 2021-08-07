# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deco < Formula
  desc "DockerEvironmentCOntrol"
  homepage "https://github.com/YaleUniversity/deco"
  version "1.1.0-pre02"
  license "AGPL-3.0-or-later"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0-pre02/deco_1.1.0-pre02_darwin_amd64.tar.gz"
      sha256 "6ad015a9de77ac0b9a162f1e1ab6038397cfe580a7f783bd4c65a24f856568e8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0-pre02/deco_1.1.0-pre02_darwin_arm64.tar.gz"
      sha256 "1f855785cb18bc458b9fc52577b3aa67bc671340940499723afd60bc56392bae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0-pre02/deco_1.1.0-pre02_linux_amd64.tar.gz"
      sha256 "1ced626510f4094c1e67e1a05bce17345d2effc22164874b44c2bc7d0305d776"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0-pre02/deco_1.1.0-pre02_linux_arm64.tar.gz"
      sha256 "c7fb2e912dcec4c3689da49d0453c12d1c55ede3f03b488e9447e3271966a3d3"
    end
  end

  def install
    bin.install "deco"
  end

  test do
    system "#{bin}/deco", "version"
  end
end