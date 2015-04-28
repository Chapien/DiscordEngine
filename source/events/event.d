import event_receiver;

class Event
{
    private long eventID;

    public void SendEvent(EventReceiver target)
    {
        if (target.CanHandle(this))
        {
            //Send the event
        }

    }
    
}



