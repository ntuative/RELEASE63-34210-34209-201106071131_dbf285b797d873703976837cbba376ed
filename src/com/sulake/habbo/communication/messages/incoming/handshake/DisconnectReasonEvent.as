package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2098:int = 0;
      
      public static const const_1733:int = 1;
      
      public static const const_1864:int = 2;
      
      public static const const_2163:int = 3;
      
      public static const const_2045:int = 4;
      
      public static const const_2056:int = 5;
      
      public static const const_1829:int = 10;
      
      public static const const_2162:int = 11;
      
      public static const const_2246:int = 12;
      
      public static const const_2057:int = 13;
      
      public static const const_2070:int = 16;
      
      public static const const_2167:int = 17;
      
      public static const const_2219:int = 18;
      
      public static const const_2093:int = 19;
      
      public static const const_2132:int = 20;
      
      public static const const_2193:int = 22;
      
      public static const const_2240:int = 23;
      
      public static const const_2054:int = 24;
      
      public static const const_2122:int = 25;
      
      public static const const_2110:int = 26;
      
      public static const const_2170:int = 27;
      
      public static const const_2181:int = 28;
      
      public static const const_2183:int = 29;
      
      public static const const_2208:int = 100;
      
      public static const const_2196:int = 101;
      
      public static const const_2182:int = 102;
      
      public static const const_2205:int = 103;
      
      public static const const_2225:int = 104;
      
      public static const const_2078:int = 105;
      
      public static const const_2200:int = 106;
      
      public static const const_2178:int = 107;
      
      public static const const_2039:int = 108;
      
      public static const const_2172:int = 109;
      
      public static const const_2135:int = 110;
      
      public static const const_2237:int = 111;
      
      public static const const_2041:int = 112;
      
      public static const const_2229:int = 113;
      
      public static const const_2138:int = 114;
      
      public static const const_2204:int = 115;
      
      public static const const_2179:int = 116;
      
      public static const const_2144:int = 117;
      
      public static const const_2209:int = 118;
      
      public static const const_2218:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1733:
            case const_1829:
               return "banned";
            case const_1864:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
