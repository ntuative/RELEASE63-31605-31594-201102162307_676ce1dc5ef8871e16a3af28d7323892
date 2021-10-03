package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_910:String = "avatar";
      
      private static const const_587:Number = -0.01;
      
      private static const const_586:Number = -0.409;
      
      private static const const_912:int = 2;
      
      private static const const_1218:Array = [0,0,0];
      
      private static const const_1237:int = 3;
       
      
      private var var_556:AvatarVisualizationData = null;
      
      private var var_456:Map;
      
      private var var_466:Map;
      
      private var var_1014:int = 0;
      
      private var var_854:Boolean;
      
      private var var_544:String;
      
      private var var_813:String;
      
      private var var_1015:int = 0;
      
      private var var_557:BitmapDataAsset;
      
      private var var_838:BitmapDataAsset;
      
      private var var_1526:int = -1;
      
      private var var_1595:int = -1;
      
      private var var_1596:int = -1;
      
      private const const_911:int = 0;
      
      private const const_1661:int = 1;
      
      private const const_1673:int = 2;
      
      private const const_1674:int = 3;
      
      private const const_1219:int = 4;
      
      private var var_1623:int = -1;
      
      private var var_233:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1594:Boolean = false;
      
      private var var_1598:Boolean = false;
      
      private var _isSleeping:Boolean = false;
      
      private var var_1282:Boolean = false;
      
      private var var_613:Boolean = false;
      
      private var var_1258:int = 0;
      
      private var var_1283:int = 0;
      
      private var var_2169:int = 0;
      
      private var var_688:int = 0;
      
      private var var_690:int = 0;
      
      private var var_558:int = 0;
      
      private var var_1284:int = 0;
      
      private var var_1037:Boolean = false;
      
      private var var_1597:Boolean = false;
      
      private var var_1038:int = 0;
      
      private var var_689:int = 0;
      
      private var var_1599:Boolean = false;
      
      private var var_1039:int = 0;
      
      private var var_54:IAvatarImage = null;
      
      private var var_742:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_456 = new Map();
         this.var_466 = new Map();
         this.var_854 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_456 != null)
         {
            this.resetImages();
            this.var_456.dispose();
            this.var_466.dispose();
            this.var_456 = null;
         }
         this.var_556 = null;
         this.var_557 = null;
         this.var_838 = null;
         super.dispose();
         this.var_742 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_742;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_556 = param1 as AvatarVisualizationData;
         createSprites(this.const_1219);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_165)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_226) > 0 && param3);
            if(_loc5_ != this.var_1594)
            {
               this.var_1594 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_353) > 0;
            if(_loc5_ != this.var_1598)
            {
               this.var_1598 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_372) > 0;
            if(_loc5_ != this._isSleeping)
            {
               this._isSleeping = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_751) > 0 && param3);
            if(_loc5_ != this.var_1282)
            {
               this.var_1282 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1010) > 0;
            if(_loc5_ != this.var_613)
            {
               this.var_613 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_258);
            if(_loc6_ != this.var_1258)
            {
               this.var_1258 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_329);
            if(_loc7_ != this.var_233)
            {
               this.var_233 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_882);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1074);
            if(_loc6_ != this.var_1283)
            {
               this.var_1283 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_499);
            if(_loc6_ != this.var_688)
            {
               this.var_688 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_526);
            if(_loc6_ != this.var_690)
            {
               this.var_690 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_371);
            if(_loc6_ != this.var_558)
            {
               this.var_558 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_297);
            if(_loc6_ != this.var_1526)
            {
               this.var_1526 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_690 > 0 && param1.getNumber(RoomObjectVariableEnum.const_371) > 0)
            {
               if(this.var_558 != this.var_690)
               {
                  this.var_558 = this.var_690;
                  _loc4_ = true;
               }
            }
            else if(this.var_558 != 0)
            {
               this.var_558 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_696);
            if(_loc6_ != this.var_1038)
            {
               this.var_1038 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1174);
            if(_loc7_ != this.var_813)
            {
               this.var_813 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_188);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_165 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_544 != param1)
         {
            this.var_544 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_456)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_466)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_456.reset();
         this.var_466.reset();
         this.var_54 = null;
         _loc2_ = getSprite(this.const_911);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1282 = false;
         }
         if(this.var_233 == "sit" || this.var_233 == "lay")
         {
            this.var_1284 = param1 / 2;
         }
         else
         {
            this.var_1284 = 0;
         }
         this.var_1597 = false;
         this.var_1037 = false;
         if(this.var_233 == "lay")
         {
            this.var_1037 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1597 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_456.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_466.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_556.getAvatar(this.var_544,param1,this.var_813,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_456.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_466.length >= const_1237)
                  {
                     this.var_466.remove(this.var_466.getKeys().shift());
                  }
                  this.var_466.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_438 != param1.getUpdateID() || this.var_1623 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1526;
            if(this.var_233 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1595 || param4)
            {
               _loc5_ = true;
               this.var_1595 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_54.setDirectionAngle(AvatarSetType.const_34,_loc6_);
            }
            if(_loc7_ != this.var_1596 || param4)
            {
               _loc5_ = true;
               this.var_1596 = _loc7_;
               if(this.var_1596 != this.var_1595)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_54.setDirectionAngle(AvatarSetType.const_48,_loc7_);
               }
            }
            var_438 = param1.getUpdateID();
            this.var_1623 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1661);
         this.var_557 = null;
         if(this.var_233 == "mv" || this.var_233 == "std")
         {
            _loc2_.visible = true;
            if(this.var_557 == null || param1 != var_185)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_557 = this.var_54.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_557 = this.var_54.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_557 != null)
               {
                  _loc2_.asset = this.var_557.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_557 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_838 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1673);
         if(this.var_613)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_838 = this.var_556.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_838 = this.var_556.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_233 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_233 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_838 != null)
            {
               _loc2_.asset = this.var_838.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1674);
         if(this.var_1038 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_556.getAvatarRendererAsset("number_" + this.var_1038 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_556.getAvatarRendererAsset("number_" + this.var_1038 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_233 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_233 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_689 = 1;
               this.var_1599 = true;
               this.var_1039 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_689 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1674);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1599)
         {
            ++this.var_1039;
            if(this.var_1039 < 10)
            {
               return false;
            }
            if(this.var_689 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1039 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_689 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_689 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_689 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_689 = 0;
               this.var_1599 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_556 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_688;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_185 || this.var_54 == null)
         {
            if(_loc6_ != var_185)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_688)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_54 == null || _loc11_)
            {
               this.var_54 = this.getAvatarImage(_loc6_,this.var_688);
               if(this.var_54 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_911);
               if(_loc15_ && this.var_54 && this.var_54.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_54 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_54);
            var_185 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_854 || this.var_1015 > 0) && param3;
         if(_loc13_)
         {
            this.var_1015 = const_912;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1015;
            --this.var_1014;
            if(!(this.var_1014 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_54.updateAnimationByFrames(1);
            this.var_1014 = const_912;
            _loc17_ = this.var_54.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1218;
            }
            _loc16_ = getSprite(this.const_911);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_54.getImage(AvatarSetType.const_34,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1284;
               }
               if(this.var_1037)
               {
                  if(this.var_1597)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_586 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_587 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1673);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1037)
               {
                  _loc16_.relativeDepth = const_587 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_586 - 0.01 + _loc17_[2];
               }
            }
            this.var_854 = this.var_54.isAnimating();
            _loc18_ = this.const_1219;
            for each(_loc19_ in this.var_54.getSprites())
            {
               if(_loc19_.id == const_910)
               {
                  _loc16_ = getSprite(this.const_911);
                  _loc21_ = this.var_54.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_54.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_54.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_54.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_54.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_54.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_54.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_54.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_54.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_54.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1284;
                     if(this.var_1037)
                     {
                        _loc16_.relativeDepth = const_586 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_587 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_344,this.var_233,this._postureParameter);
         if(this.var_1258 > 0)
         {
            param1.appendAction(AvatarAction.const_317,AvatarAction.const_1595[this.var_1258]);
         }
         if(this.var_1283 > 0)
         {
            param1.appendAction(AvatarAction.const_641,this.var_1283);
         }
         if(this.var_2169 > 0)
         {
            param1.appendAction(AvatarAction.const_880,this.var_2169);
         }
         if(this.var_690 > 0)
         {
            param1.appendAction(AvatarAction.const_711,this.var_690);
         }
         if(this.var_558 > 0)
         {
            param1.appendAction(AvatarAction.const_770,this.var_558);
         }
         if(this.var_1594)
         {
            param1.appendAction(AvatarAction.const_311);
         }
         if(this._isSleeping || this.var_1282)
         {
            param1.appendAction(AvatarAction.const_542);
         }
         if(this.var_1598)
         {
            param1.appendAction(AvatarAction.const_267);
         }
         if(this.var_688 > 0)
         {
            param1.appendAction(AvatarAction.const_286,this.var_688);
         }
         param1.endActionAppends();
         this.var_854 = param1.isAnimating();
         var _loc2_:int = this.const_1219;
         for each(_loc3_ in this.var_54.getSprites())
         {
            if(_loc3_.id != const_910)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
