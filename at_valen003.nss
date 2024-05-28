void main()
{

object oWagDoor = GetObjectByTag("DT_WAGDOOR");

// Defines waypoints used on this section of the dialog
object oWagExit = GetObjectByTag("WP_WAGONTOFOREST");
object oByTheHouse = GetObjectByTag("WP_BYTHEHOUSE");


    // Remove items from the player's inventory
    object oItemToTake;
    oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "IT_RUSTYKEY");
    if(GetIsObjectValid(oItemToTake))
        {
            DestroyObject(oItemToTake);
        }

    // Unlocks wagon's door
    AssignCommand(oWagDoor, ActionUnlockObject(oWagDoor));

    // Plays animation to walk to door and teleport outside
    ActionMoveToObject(oWagExit);
    ActionPlayAnimation(ANIMATION_LOOPING_GET_MID);
    ActionWait(1.0);
    ActionJumpToObject(oByTheHouse, FALSE);


    // Set the variables
    SetLocalInt(GetPCSpeaker(), "nValenDialog", 3);


}
