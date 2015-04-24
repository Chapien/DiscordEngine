import event_receiver;

class EventData
{
    long eventID;    
}

class Event
{
    EventData data;
    void SendEvent(EventReceiver target)
    {
        if (target.CanHandle(this))
        {
            //Send the event
        }
    }
    
}



