import event_receiver;

class Event
{
    private long eventID; // Event ID, mapped to a string.
    
    // Stuff for assigning IDs and mapping them to strings.
    private static long currID = 0;
    private static long[string] stringMap;
    private static string[long] longMap;

    // Takes a string and assigns it to an ID
    public this(string name)
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

    public long GetID()
    {
        return eventID;
    }

    static private long GenerateID()
    {
        // Generates a new ID. Very simple.
        ++currID;
        return currID;
    }

    static private long AssignID(string name)
    {
        // Assigns the string to an ID.
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



