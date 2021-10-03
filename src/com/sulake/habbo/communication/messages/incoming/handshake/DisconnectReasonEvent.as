package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1824:int = 0;
      
      public static const const_1626:int = 1;
      
      public static const const_1412:int = 2;
      
      public static const const_1885:int = 3;
      
      public static const const_1857:int = 4;
      
      public static const const_1864:int = 5;
      
      public static const const_1574:int = 10;
      
      public static const const_1809:int = 11;
      
      public static const const_1825:int = 12;
      
      public static const const_1763:int = 13;
      
      public static const const_1837:int = 16;
      
      public static const const_1817:int = 17;
      
      public static const const_1714:int = 18;
      
      public static const const_1821:int = 19;
      
      public static const const_1771:int = 20;
      
      public static const const_1847:int = 22;
      
      public static const const_1865:int = 23;
      
      public static const const_1900:int = 24;
      
      public static const const_1723:int = 25;
      
      public static const const_1748:int = 26;
      
      public static const const_1903:int = 27;
      
      public static const const_1840:int = 28;
      
      public static const const_1735:int = 29;
      
      public static const const_1750:int = 100;
      
      public static const const_1875:int = 101;
      
      public static const const_1845:int = 102;
      
      public static const const_1760:int = 103;
      
      public static const const_1877:int = 104;
      
      public static const const_1937:int = 105;
      
      public static const const_1866:int = 106;
      
      public static const const_1844:int = 107;
      
      public static const const_1777:int = 108;
      
      public static const const_1853:int = 109;
      
      public static const const_1830:int = 110;
      
      public static const const_1770:int = 111;
      
      public static const const_1741:int = 112;
      
      public static const const_1816:int = 113;
      
      public static const const_1822:int = 114;
      
      public static const const_1922:int = 115;
      
      public static const const_1749:int = 116;
      
      public static const const_1806:int = 117;
      
      public static const const_1839:int = 118;
      
      public static const const_1795:int = 119;
       
      
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
            case const_1626:
            case const_1574:
               return "banned";
            case const_1412:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
