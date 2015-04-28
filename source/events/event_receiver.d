import event;

interface EventReceiver
{
    bool CanHandle(const Event e);
    void Handle(Event e);
}
