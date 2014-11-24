class EventData
{

}

class Event
{
    EventData data;



}

interface EventReceiver
{
    bool CanHandle(const Event e);
    void Handle(Event e);
}

interface EventDispatcher : EventReceiver
{
    void AddListener(EventReceiver *receiver);
    void RemoveListener(EventReceiver *receiver);
}