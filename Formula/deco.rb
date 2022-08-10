# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deco < Formula
  desc "DockerEvironmentCOntrol"
  homepage "https://github.com/YaleUniversity/deco"
  version "1.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.3.1/deco_1.3.1_darwin_arm64.tar.gz"
      sha256 "104effaeeacf6588ca36e380b1ba3135fcdbfcdeecc55b67718ba8b3dcd17f7d"

      def install
        bin.install "deco"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.3.1/deco_1.3.1_darwin_amd64.tar.gz"
      sha256 "4a591cf67aec209ee5626ebe79885d60e4289bf9bfbb55501882e8027cb9763b"

      def install
        bin.install "deco"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.3.1/deco_1.3.1_linux_arm64.tar.gz"
      sha256 "bfc15b098bff072b0583ddd09928bf6f966dffcd17bc3fdd13909d8414b235d2"

      def install
        bin.install "deco"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YaleUniversity/deco/releases/download/v1.3.1/deco_1.3.1_linux_amd64.tar.gz"
      sha256 "dac2ad1d639a50e0a8451a0c9e9545d3250d03491d7103b59503dbf8988fe4e8"

      def install
        bin.install "deco"
      end
    end
  end

  test do
    system "#{bin}/deco", "version"
  end
end
