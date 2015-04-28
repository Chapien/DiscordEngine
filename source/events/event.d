import event_receiver;

class Event
{
    private long eventID;

    private static long currID = 0;
    private static long[string] stringMap;
    private static string[long] longMap;

    public void SendEvent(EventReceiver target)
    {
        if (target.CanHandle(this))
        {
            target.Handle(this);
        }
    }

    static public long GenerateID()
    {
        ++currID;
        return currID;
    }
    
}



