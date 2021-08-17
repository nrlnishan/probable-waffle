Pod::Spec.new do |s|
    s.name         = "ProbableWaffle"
    s.version      = "1.0.0"
    s.summary      = "Waffle SDK"
    s.description  = <<-DESC
    An easy way to create a waffle
    DESC
    s.homepage     = "https://github.com/nrlnishan/probable-waffle"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2021
                   Permission is granted to this creator
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/nrlnishan/probable-waffle.git", :tag => "#{s.version}" }
    s.vendored_frameworks = 'ProbableWaffle.framework'
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '12.0'
    s.dependency 'Realm', '~> 10.12.0'

    # Exclude arm64 architecture
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
