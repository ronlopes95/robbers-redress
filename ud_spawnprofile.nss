void InventoryPurge()
{
object oPC = GetEnteringObject();

object oItem = GetFirstItemInInventory(oPC);
                 while (GetIsObjectValid(oItem))
                    {
                        // Destroy the item
                        DestroyObject(oItem);

                        // Move to the next item
                        oItem = GetNextItemInInventory(oPC);
                    }
}

void main()
{
    // Defines the player
    object oPC = GetEnteringObject();

    // Makes sure the code only runs if it is a player
    if (GetIsPC(oPC))
        {

        // Defines whether the player has already received his profile or not
        // 1 = Still waiting for profile
        // 0 = Has already received profile
        string sProfileState = "1";

        // Check if the script has already run for this player character
        if (GetLocalInt(oPC, sProfileState) == 0)
            {
                // Gives player armor
                object oPlotArmor = CreateItemOnObject("NW_MAARCL044", oPC, 1, "IT_PLOTARMOR");
                if (GetIsObjectValid(oPlotArmor))
                    {   // Identifies the armor and equips it
                        SetIdentified(oPlotArmor, TRUE);
                        AssignCommand(oPC, ActionEquipItem(oPlotArmor, INVENTORY_SLOT_CHEST));
                    }

                 // Wipes player's inventory
                 DelayCommand(1.0, InventoryPurge());

                 //Changes head appearance to a hood (if male/female human, that is - experimental)
                  SetCreatureBodyPart(CREATURE_PART_HEAD, 2, oPC);

                // Set the local variable to mark that the profile has been given
                // Test banana
                SetLocalInt(oPC, sProfileState, 0);
            }
    }


}
