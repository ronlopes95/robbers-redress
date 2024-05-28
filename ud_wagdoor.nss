void main()
{

int nWagDoor = GetLocalInt(OBJECT_SELF, "nWagDoor");
object WagDoor = GetObjectByTag("IT_WAGDOOR");

if(nWagDoor == 1)
{
AssignCommand(WagDoor, ActionUnlockObject(WagDoor));
}

}
