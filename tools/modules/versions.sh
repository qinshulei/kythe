#!/bin/sh -e
# Copyright 2015 The Kythe Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Lists the SHA (for git) and REV (for svn) for each required component.
# LLVM checkouts can be svn or git. Each svn revision has an associated
# git-svn sha. (The svn revision will appear in the git log entry.) When a
# checkout is updated to a new minimum version, both its _SHA and _REV should
# be set to the new (matched) strings.

# llvm
MIN_LLVM_SHA="d8c8d742377d60b3cdacd4b7131115f5ac1e2bc2"
MIN_LLVM_REV="337145"
# clang
# NOTE: when updating Clang, make sure to adjust the path in
# //third_party/llvm/BUILD:clang_builtin_headers_resources
MIN_CLANG_SHA="27d1a66dffa9424bcdadc7cd52cf2ae019e49889"
MIN_CLANG_REV="337125"

FULL_SHA="${MIN_LLVM_SHA}-${MIN_CLANG_SHA}"
