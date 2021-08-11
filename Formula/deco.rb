# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deco < Formula
  desc "DockerEvironmentCOntrol"
  homepage "https://github.com/YaleUniversity/deco"
  version "1.2.0-pre02"
  license "AGPL-3.0-or-later"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.2.0-pre02/deco_1.2.0-pre02_darwin_amd64.tar.gz"
      sha256 "1c3a230aa5c602b8508ba34790b7b2a151d0c2a8a533a28de6e1b45ba9cd62a4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.2.0-pre02/deco_1.2.0-pre02_darwin_arm64.tar.gz"
      sha256 "6d89b35c844ad4427fb3e2da5fe1dec6256f2de6d32c108862e1d0490a104eff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.2.0-pre02/deco_1.2.0-pre02_linux_amd64.tar.gz"
      sha256 "70bb6a173bad16984862c5cdcf52cb4c39e26f8fa1990d0588eb155467057bdd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.2.0-pre02/deco_1.2.0-pre02_linux_arm64.tar.gz"
      sha256 "2a2abb5c8c2dc2df87eded130e999c2b2aa329741302454a616bed433c293fb4"
    end
  end

  def install
    bin.install "deco"
  end

  test do
    system "#{bin}/deco", "version"
  end
end
