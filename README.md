# Pre-work - Tips+

Tips+ is a tip calculator application for iOS.

Submitted by: Ahmed Abdalla

Time spent: ~5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [ * ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [ * ] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ * ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!
- Adding typical tip rates per location.
- Indicating who is receiving tips.
- Saving tip history.

## Video Walkthrough

Link: https://imgur.com/HwnUUma

## Notes

A challenge encountered while building the app was properly communicating settings between view controllers. I decided to have a tip percentage changer in both the main screen and settings screen so the user can have a default percentage retrieved from UserDefaults on launch and also be able to change percentage on the main screen.

## License

    Copyright [yyyy] [Ahmed Abdalla]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
