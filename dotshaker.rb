# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.45"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.45/dotshaker_0.0.45_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "159dd1775255312f471be40dfacdb8c5c71d3ebfb9ca7d70df9f13950e1ccaa3"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.45/dotshaker_0.0.45_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f51cd6e2fe7f790efec1244be5ae21bed049ef1fa7c1233087fd06a723d80d0"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.45/dotshaker_0.0.45_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "77af17e84bcdc47bf1e1f0ee5162c972e0074d3b4b66cc0561bde38784fe556f"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.45/dotshaker_0.0.45_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "844a7b79eca5ca9178d0c1b4f5606aa8face0cea0e42004e2ed0b168fdb55126"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.45/dotshaker_0.0.45_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fd81bf744b387d39635607feddfd24ec167f19ab11f1ddf07019e5d7a24c911f"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
