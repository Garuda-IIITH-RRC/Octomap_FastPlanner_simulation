
"use strict";

let ParamGet = require('./ParamGet.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let CommandLong = require('./CommandLong.js')
let SetMavFrame = require('./SetMavFrame.js')
let MountConfigure = require('./MountConfigure.js')
let WaypointPush = require('./WaypointPush.js')
let FileWrite = require('./FileWrite.js')
let WaypointClear = require('./WaypointClear.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let FileOpen = require('./FileOpen.js')
let CommandHome = require('./CommandHome.js')
let LogRequestData = require('./LogRequestData.js')
let LogRequestList = require('./LogRequestList.js')
let CommandBool = require('./CommandBool.js')
let SetMode = require('./SetMode.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let ParamPush = require('./ParamPush.js')
let FileChecksum = require('./FileChecksum.js')
let FileMakeDir = require('./FileMakeDir.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let ParamSet = require('./ParamSet.js')
let StreamRate = require('./StreamRate.js')
let ParamPull = require('./ParamPull.js')
let FileClose = require('./FileClose.js')
let WaypointPull = require('./WaypointPull.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let MessageInterval = require('./MessageInterval.js')
let FileRead = require('./FileRead.js')
let FileRemove = require('./FileRemove.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let CommandTOL = require('./CommandTOL.js')
let FileRename = require('./FileRename.js')
let FileTruncate = require('./FileTruncate.js')
let CommandInt = require('./CommandInt.js')
let FileList = require('./FileList.js')

module.exports = {
  ParamGet: ParamGet,
  WaypointSetCurrent: WaypointSetCurrent,
  CommandLong: CommandLong,
  SetMavFrame: SetMavFrame,
  MountConfigure: MountConfigure,
  WaypointPush: WaypointPush,
  FileWrite: FileWrite,
  WaypointClear: WaypointClear,
  CommandTriggerControl: CommandTriggerControl,
  FileOpen: FileOpen,
  CommandHome: CommandHome,
  LogRequestData: LogRequestData,
  LogRequestList: LogRequestList,
  CommandBool: CommandBool,
  SetMode: SetMode,
  VehicleInfoGet: VehicleInfoGet,
  FileRemoveDir: FileRemoveDir,
  ParamPush: ParamPush,
  FileChecksum: FileChecksum,
  FileMakeDir: FileMakeDir,
  LogRequestEnd: LogRequestEnd,
  ParamSet: ParamSet,
  StreamRate: StreamRate,
  ParamPull: ParamPull,
  FileClose: FileClose,
  WaypointPull: WaypointPull,
  CommandVtolTransition: CommandVtolTransition,
  MessageInterval: MessageInterval,
  FileRead: FileRead,
  FileRemove: FileRemove,
  CommandTriggerInterval: CommandTriggerInterval,
  CommandTOL: CommandTOL,
  FileRename: FileRename,
  FileTruncate: FileTruncate,
  CommandInt: CommandInt,
  FileList: FileList,
};
