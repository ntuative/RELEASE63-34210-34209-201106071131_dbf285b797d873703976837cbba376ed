package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1857:int;
      
      private var _currentPosition:int;
      
      private var var_1856:int;
      
      private var var_1859:int;
      
      private var var_1858:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1857;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1856;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1859;
      }
      
      public function get syncCount() : int
      {
         return this.var_1858;
      }
      
      public function flush() : Boolean
      {
         this.var_1857 = -1;
         this._currentPosition = -1;
         this.var_1856 = -1;
         this.var_1859 = -1;
         this.var_1858 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1857 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1856 = param1.readInteger();
         this.var_1859 = param1.readInteger();
         this.var_1858 = param1.readInteger();
         return true;
      }
   }
}
