---
title: xcode-error
tags: [Xcode]
toc: true
date: 2022-09-01 17:07:01
---

## 问题

CodeSign /Users/samingzhong/Library/Developer/Xcode/DerivedData/hello_test-fylaetanydqyjmcztsjbbxlarfcn/Build/Products/Debug-iphoneos/hello_test.app (in target 'hello_test' from project 'hello_test')

  cd /Users/samingzhong/code/hello_test

export CODESIGN_ALLOCATE\=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/codesign_allocate

   

  Signing Identity:   "Apple Development: xm zhong (3P4U259K9P)"

  Provisioning Profile: "iOS Team Provisioning Profile: *"

​             (854064ad-8cfb-4876-9d0d-26e114399cc1)

   

  /usr/bin/codesign --force --sign 522AD5C72D044BF491247B571FB17CF939946BB2 --entitlements /Users/samingzhong/Library/Developer/Xcode/DerivedData/hello_test-fylaetanydqyjmcztsjbbxlarfcn/Build/Intermediates.noindex/hello_test.build/Debug-iphoneos/hello_test.build/hello_test.app.xcent --timestamp\=none --generate-entitlement-der /Users/samingzhong/Library/Developer/Xcode/DerivedData/hello_test-fylaetanydqyjmcztsjbbxlarfcn/Build/Products/Debug-iphoneos/hello_test.app



Warning: unable to build chain to self-signed root for signer "Apple Development: xm zhong (3P4U259K9P)"

/Users/samingzhong/Library/Developer/Xcode/DerivedData/hello_test-fylaetanydqyjmcztsjbbxlarfcn/Build/Products/Debug-iphoneos/hello_test.app: errSecInternalComponent

Command CodeSign failed with a nonzero exit code



### 解决方案

删掉本地的证书，让Xcode重新生成相关证书文件。



晋升答辩注意事项

重方案轻细节。不会问业务。定位问题、解决问题思路。
