SET @item_mammoth_cutters     = 41164;
SET @item_saronite_razorheads = 41165;
SET @item_shatter_rounds      = 52020;
SET @item_iceblade_arrow      = 52021;

SET @vendor_engineering = 28722; -- engineering vendor

DELETE FROM npc_vendor WHERE entry = @vendor_engineering AND item IN (
   @item_shatter_rounds, @item_iceblade_arrow, @item_mammoth_cutters, @item_saronite_razorheads );

INSERT INTO npc_vendor (entry, slot, item)
VALUES
(@vendor_engineering, 2, @item_shatter_rounds),
(@vendor_engineering, 2, @item_iceblade_arrow);

