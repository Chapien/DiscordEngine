import event;

interface EventReceiver
{
    public bool CanHandle(const Event e);
    public void Handle(Event e);
}
