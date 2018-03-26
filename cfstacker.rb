class CFStacker < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/yuuki/cfstacker"
  head "https://github.com/yuuki/cfstacker.git"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cfstacker", "--version"
  end
end
