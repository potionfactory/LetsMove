Pod::Spec.new do |s|
  s.name         = "LetsMove"
  s.version      = "1.22"
  s.summary      = "Moves a running Mac application to the /Applications directory."
  s.homepage     = "https://github.com/potionfactory/LetsMove/"
  s.license      = 'Public Domain'
  s.author       = { "Andy Kim" => "andy@potionfactory.com" }

  s.platform     = :osx, '10.6'

  s.source = {
    :git => "https://github.com/potionfactory/LetsMove.git",
    :tag => "v1.22"
  }

  s.source_files = '*.{h,m}'
  s.exclude_files = 'main.m', 'LetsMoveAppDelegate.{h,m}'
  s.public_header_files = 'PFMoveApplication.h'

  s.resources = '*.lproj'
  s.requires_arc = false
end

