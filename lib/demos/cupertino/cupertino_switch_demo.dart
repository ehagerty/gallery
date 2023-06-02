// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

// BEGIN cupertinoSwitchDemo

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo>
    with RestorationMixin {
  final RestorableBool _switchValueA = RestorableBool(false);
  final RestorableBool _switchValueB = RestorableBool(true);

  @override
  String get restorationId => 'cupertino_switch_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_switchValueA, 'switch_valueA');
    registerForRestoration(_switchValueB, 'switch_valueB');
  }

  @override
  Widget build(BuildContext context) {
    final localizations = GalleryLocalizations.of(context)!;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text(
          localizations.demoSelectionControlsSwitchTitle,
        ),
      ),
      child: Center(
        child: Semantics(
          container: true,
          label: localizations.demoSelectionControlsSwitchTitle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoSwitch(
                    value: _switchValueA.value,
                    onChanged: (value) {
                      setState(() {
                        _switchValueA.value = value;
                      });
                    },
                  ),
                  CupertinoSwitch(
                    value: _switchValueB.value,
                    onChanged: (value) {
                      setState(() {
                        _switchValueB.value = value;
                      });
                    },
                  ),
                ],
              ),
              // Disabled switches
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoSwitch(
                    value: _switchValueA.value,
                    onChanged: null,
                  ),
                  CupertinoSwitch(
                    value: _switchValueB.value,
                    onChanged: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// END
