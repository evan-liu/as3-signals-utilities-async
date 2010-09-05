package org.osflash.signals.utils
{
    import org.flexunit.async.Async;
    import org.osflash.signals.ISignal;
    /**
     * Delegate function for <code>Async.failOnSignal()</code>.
     * @author eidiot
     */
    public function failOnSignal(testCase:Object, signal:ISignal,
                                 timeout:int = 500,
                                 timeoutHandler:Function = null):void
    {
        Async.failOnEvent(testCase, new SignalAsync(signal),
                          SignalAsyncEvent.CALLED, timeout, timeoutHandler);
    }
}