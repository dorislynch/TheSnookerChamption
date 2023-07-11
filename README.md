
# react-native-the-snooker-chamption

## Getting started

`$ npm install react-native-the-snooker-chamption --save`

### Mostly automatic installation

`$ react-native link react-native-the-snooker-chamption`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-snooker-chamption` and add `RNTheSnookerChamption.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTheSnookerChamption.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTheSnookerChamptionPackage;` to the imports at the top of the file
  - Add `new RNTheSnookerChamptionPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-snooker-chamption'
  	project(':react-native-the-snooker-chamption').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-snooker-chamption/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-snooker-chamption')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTheSnookerChamption.sln` in `node_modules/react-native-the-snooker-chamption/windows/RNTheSnookerChamption.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Snooker.Chamption.RNTheSnookerChamption;` to the usings at the top of the file
  - Add `new RNTheSnookerChamptionPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTheSnookerChamption from 'react-native-the-snooker-chamption';

// TODO: What to do with the module?
RNTheSnookerChamption;
```
  