# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.28"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.28/dotshaker_0.0.28_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ea9f6ea53200bd5e142b70c4fb13defccd6e8a33944c2cd12b70138f026c8bcc"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.28/dotshaker_0.0.28_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8d137c123bfcf06a9e6d1a9dc8516fda51e246d210bf11278cb70c1bfbfacca1"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.28/dotshaker_0.0.28_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1f7d8f196a00ac60dd1752c675c8376f82a7a41dddfaf33f0291df68cba8f5a6"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.28/dotshaker_0.0.28_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "0d93a79216fb9d65a45a93631ddaa147547c7d5d350c662b8c6628d15edc5101"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.28/dotshaker_0.0.28_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ce6c84b9496df35fca960cc92445e03b3501f182a92a8a2c807bcca9f880f7f8"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
