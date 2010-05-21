package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;
    /**
     * Delegate function for <code>Async.registerFailureEvent()</code>.
     * @author eidiot
     */
    public function registerFailureSignal(testCase:Object, signal:Signal):void
    {
        Async.registerFailureEvent(testCase, new SignalAsync(signal), SignalAsyncEvent.CALLED);
    }
}