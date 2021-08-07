# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deco < Formula
  desc "DockerEvironmentCOntrol"
  homepage "https://github.com/YaleUniversity/deco"
  version "1.1.0"
  license "AGPL-3.0-or-later"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0/deco_1.1.0_darwin_amd64.tar.gz"
      sha256 "6f485ffad9e0cd5cfb3c20c3724fa5dada94516a0118ae46963481029c35ad16"
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0/deco_1.1.0_darwin_arm64.tar.gz"
      sha256 "6769833895b98546bedf7fb3d951bef3e8c844529b9bceecb1bbd087704e582c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0/deco_1.1.0_linux_amd64.tar.gz"
      sha256 "9ed7cdbab12d122b266f8478f010ebf9c4bfa091f7613db46349d4f74d1e7f6b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.1.0/deco_1.1.0_linux_arm64.tar.gz"
      sha256 "68b5272c0d5ccc16297f8b3010e926ef40dd80cf5934653e90234b5086fcb79e"
    end
  end

  def install
    bin.install "deco"
  end

  test do
    system "#{bin}/deco", "version"
  end
end
