package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;
    /**
     * @author eidiot
     */
    public function proceedOnSignal(testCase:Object, signal:Signal,
                                    timeout:int = 500,
                                    timeoutHandler:Function = null):void
    {
        Async.proceedOnEvent(testCase, new SignalAsync(signal),
                             SignalAsyncEvent.CALLED, timeout, timeoutHandler);
    }
}