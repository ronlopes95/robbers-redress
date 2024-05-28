//::///////////////////////////////////////////////
//:: FileName valen003
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "IT_UTILITYBELT"))
        return FALSE;
    if(!HasItem(GetPCSpeaker(), "NW_WSWSS001"))
        return FALSE;

    /*if(!(GetLocalInt(GetPCSpeaker(), "nValenDialog") == 2))
    return FALSE; */

    return TRUE;
}
