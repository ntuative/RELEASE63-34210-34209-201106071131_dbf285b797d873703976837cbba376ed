package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_794:TileHeightMap = null;
      
      private var var_1224:LegacyWallGeometry = null;
      
      private var var_1223:RoomCamera = null;
      
      private var var_796:SelectedRoomObjectData = null;
      
      private var var_795:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_528:Map;
      
      private var var_527:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_528 = new Map();
         this.var_527 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1224 = new LegacyWallGeometry();
         this.var_1223 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_794;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_794 != null)
         {
            this.var_794.dispose();
         }
         this.var_794 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1224;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1223;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_796;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_796 != null)
         {
            this.var_796.dispose();
         }
         this.var_796 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_795;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_795 != null)
         {
            this.var_795.dispose();
         }
         this.var_795 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_794 != null)
         {
            this.var_794.dispose();
            this.var_794 = null;
         }
         if(this.var_1224 != null)
         {
            this.var_1224.dispose();
            this.var_1224 = null;
         }
         if(this.var_1223 != null)
         {
            this.var_1223.dispose();
            this.var_1223 = null;
         }
         if(this.var_796 != null)
         {
            this.var_796.dispose();
            this.var_796 = null;
         }
         if(this.var_795 != null)
         {
            this.var_795.dispose();
            this.var_795 = null;
         }
         if(this.var_528 != null)
         {
            this.var_528.dispose();
            this.var_528 = null;
         }
         if(this.var_527 != null)
         {
            this.var_527.dispose();
            this.var_527 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_528.remove(param1.id);
            this.var_528.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_528.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_528.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_528.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_527.remove(param1.id);
            this.var_527.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_527.length > 0)
         {
            return this.getWallItemDataWithId(this.var_527.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_527.remove(param1);
      }
   }
}
