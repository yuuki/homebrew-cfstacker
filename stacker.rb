class Stacker < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/yuuki/stacker"
  head "https://github.com/yuuki/stacker.git"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/stacker", "--version"
  end
end
