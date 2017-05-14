# SwiftyCoreData

## Installation with Cocoapods
Installing SwiftyCoreData is sa simple as
```
pod 'SwiftyCoreData'
```


## 1) Initializing

Import the ```CoreData``` module and ```SwiftyCoreData``` module
```
import CoreData
import SwiftyCoreData
```

Create an instance of the CoreDataModule class which takes 2 parameters. <br>
```entityName``` is the name of your created entity inside the xcDataModelID. <br>
```xcDataModelID``` is the name of your created Data Model file

var module = CoreDataModule(entityName: "<Entity Name>", xcDataModelID: "<Data Model Name>")

## 2) Save Data

__Before saving data, make sure you create your entities!__

Create an instance of the CoreDataModule

__Saving data__, call the ```push()``` method which accepts 2 array parameters, ```values``` and ```keys```.  <br>
```values``` is a generic type which accepts the information you want to save. <br>
```keys``` are where the values are saved to and must be in the same order as the values.

```
mod.push(values: ["Cyril", "Garcia", 30095768], keys: ["firstname", "lastname", "id"])
```

## 3) Retrieving Data

Create an ```NSManagedObject``` array which will contain your data.
```
var userInfo = [NSManagedObject]()
```

there are 2 ways to retrieve data, either sorted or unsorted list.<br>

__To retrieve an unsorted list__ using the ```retrieveData()``` function which returns an [NSManagedObject]
```
userInfo = mod.retrieveData()
```

__To retrieve a sorted list__, use the ```retrieveAndSort()``` function
which accepts two parameters, ```byKey: String``` and ```ascending: Bool``` <br> 
```byKey``` determins what to sort and ```ascending``` determins if you want to sort in ascending order or not.<br>
```
userInfo = mod.retrieveAndSort(byKey: "id", ascending: true)
```

## 4) Delete Data

__To delete__, call the ```remove()``` function which accepts 2 parameters, ```object:[NSManagedObject]``` and ```index:Int```

```
mod.remove(object: userInfo, index: <Index of the data you want to delete>)
```

<br>

### SwiftyCoreData • Developed By Cyril
