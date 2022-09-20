# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.42"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.42/dotshaker_0.0.42_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "50f5d6589786648a5206c6094930285dea06e894dbfbfde54e7ce157e11361ef"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.42/dotshaker_0.0.42_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4679b5ea494db143d3e14b186a99121cf546256886f49b7ccf557cb73e07f726"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.42/dotshaker_0.0.42_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0aec1cb14c89a436a9e12e2487a70cb5e8fd32acf6c71c07318dd9b9d483f107"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.42/dotshaker_0.0.42_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "9e4c7919b249507c384d57cd0ee26e9f8d3c03277aec9e51191c1a7c293005c9"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.42/dotshaker_0.0.42_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5ddfd5d595064fe0100ab2f0f5d92bb262bcbc48506e44434f45d1bb6c7d6af6"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
