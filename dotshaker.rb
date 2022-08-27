# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.15"
  license "BSD3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.15/dotshaker_0.0.15_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "42bcb6bc7dc5359b3c787468b98334af547f680718076372d15fbe885397b90f"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.15/dotshaker_0.0.15_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e14b50d826a11af68149f36bf765720df535c83331d3ba8be11222f898d351a1"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.15/dotshaker_0.0.15_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "876e366c0543d11d139dd21db16fdf695c6ccd956371a86145a9ac0b97382818"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.15/dotshaker_0.0.15_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "fde36c4bf3516cdfa3ea139897aa99324bbc0ff70bd0be930c87aa08e6586733"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.15/dotshaker_0.0.15_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ea25ed9a0f67ed408fca66855bd2b982858bd4b5fae31f5914464358b3ce3743"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
