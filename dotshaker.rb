# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.29"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.29/dotshaker_0.0.29_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "a59d8e6d742eb787318280e5611acdac5e92cdaefded642c75aa187fd87cc138"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.29/dotshaker_0.0.29_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "905ffc363749d253129729344b32617fb8e8c6b7938cf1058cc59f6b2b66050c"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.29/dotshaker_0.0.29_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "da87bc276759a02de26fe5eb2620410a67dbc03217024fa92c99fb31fa31a739"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.29/dotshaker_0.0.29_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9e73f769e82a0699530378b6e20cac1894480a81696faaf6d1148d40de76999c"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.29/dotshaker_0.0.29_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "4fd42f13a6fcbc9743cc40144bfde4abb7c2730f250f886c4b93e113a9126b2c"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
