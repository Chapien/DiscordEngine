import std.stdio;
import event;
import event_receiver;

void main()
{
    EventReceiver space = new EventReceiver();
    Event e = new Event("update");

    void delegate(Event) del;
    space.RegisterEvent(e.GetID, &(new C().handle));
    e.SendEvent(space);
}

class C
{
    public void handle(Event e)
    {
        writeln("Event Received!");
    }
}
