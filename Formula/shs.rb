class Shs < Formula
  desc "A C library for packaging directories into a single file"
  homepage "https://github.com/zhonguoq/libshs"
  url "https://github.com/zhonguoq/libshs/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "91c5d6685a69d459fa8d1525108254789e9371efdd9937499b423ba6aeb69a83"
  license "MIT"

  depends_on "cmake" => :build  # 如果使用 CMake 构建
  # depends_on "make" => :build  # 如果使用 Makefile 构建

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
