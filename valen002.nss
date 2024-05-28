//::///////////////////////////////////////////////
//:: FileName valen002
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "IT_RUSTYKEY"))
        return FALSE;

    // Make sure they DO NOT have these items in their inventory
    if(!HasItem(GetPCSpeaker(), "IT_UTILITYBELT"))
        return TRUE;
    if(!HasItem(GetPCSpeaker(), "IT_NW_WSWSS001"))
        return TRUE;

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "nValenDialog") == 2))
        return FALSE;

    return TRUE;
}
