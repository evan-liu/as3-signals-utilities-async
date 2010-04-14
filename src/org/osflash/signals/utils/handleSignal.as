package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;
    /**
     * @author eidiot
     */
    public function handleSignal(testCase:Object, signal:Signal,
                                 signalHandler:Function,
                                 timeout:int = 500,
                                 passThroughData:Object = null,
                                 timeoutHandler:Function = null):void
    {
        Async.handleEvent(testCase, new SignalAsync(signal),
                          SignalAsyncEvent.CALLED, signalHandler, timeout,
                          passThroughData, timeoutHandler);
    }
}