import std.stdio;
import event;

class EventReceiver
{
    alias void delegate(Event) DgType;

    // Maps eventIDs to an array of all delegates that use that event
    private DgType[][long] receiverList;

    public bool CanHandle(const Event e)
    {
        return true; // stub function, temporary
    }

    public void Handle(Event e)
    {
        writeln("Event received");
    }

    public void RegisterEvent(long e, DgType func)
    {
        DgType[] *funcptr = e in receiverList;
        DgType[] funclist;

        if (funcptr == null)
        {
            funclist = [];
            receiverList[e] = funclist;
        }
        else
        {
            funclist = *funcptr;
        }

        funclist ~= func;
    }
}
