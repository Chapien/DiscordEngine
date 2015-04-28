import event_receiver;

class Event
{
    private long eventID;
    
    private static long currID = 0;
    private static long[string] stringMap;
    private static string[long] longMap;

    public Event(string name)
    {
        
        eventID = AssignID(name);

    }

    public void SendEvent(EventReceiver target)
    {
        if (target.CanHandle(this))
        {
            target.Handle(this);
        }
    }

    static private long GenerateID()
    {
        ++currID;
        return currID;
    }

    static private long AssignID(string name)
    {
        long newID;
        long *id;
        id = name in stringMap;
        if (id == null)
        {
            newID = GenerateID();
            stringMap[name] = newID;
            longMap[newID] = name;
            id = &newID;
        }
        return *id;
    }
    
}



