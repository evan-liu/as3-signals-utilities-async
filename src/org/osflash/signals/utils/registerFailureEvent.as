package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;
    /**
     * @author eidiot
     */
    public function registerFailureEvent(testCase:Object, signal:Signal):void
    {
        Async.registerFailureEvent(testCase, new SignalAsync(signal), SignalAsyncEvent.CALLED);
    }
}