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

    private void RegisterEvent(Event e, DgType func)
    {
        
    }
}
