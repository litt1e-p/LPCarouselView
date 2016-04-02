Pod::Spec.new do |s|

  s.name         = "LPCarouselView"
  s.version      = "1.2.5"
  s.summary      = "Carousel auto scroll view with pageControl which is based on UICollectionView"
  s.description  = <<-DESC
                Carousel auto scroll view with pageControl which is based on UICollectionView and SDWebImage with http/https supports
                DESC

  s.homepage     = "https://github.com/litt1e-p/LPCarouselView"
  s.license          = { :type => 'MIT' }
  s.author           = { "litt1e-p" => "litt1e.p4ul@gmail.com"}
  s.source           = { :git => "https://github.com/litt1e-p/LPCarouselView.git", :tag => '1.2.5' }
  s.platform = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'LPCarouselView/*'
  s.dependency 'SDWebImage', '~> 3.7.5'
  s.frameworks = 'Foundation', 'UIKit'
end
