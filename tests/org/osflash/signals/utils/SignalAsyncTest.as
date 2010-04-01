package org.osflash.signals.utils
{
    import org.flexunit.asserts.assertEquals;
    import org.flexunit.async.Async;
    import org.osflash.signals.Signal;

    import flash.display.Sprite;
    /**
     * @author eidiot
     */
    public class SignalAsyncTest
    {
        //======================================================================
        //  Variables
        //======================================================================
        private var instance:SignalAsync;
        private var onTest:Signal;
        private var argus:Array;
        //======================================================================
        //  Public methods
        //======================================================================
        [Before]
        public function setUp():void
        {
            argus = [7, "test", [1, "2"], new Sprite()];
            onTest = new Signal(int, String, Array, Sprite);
            instance = new SignalAsync(onTest);
        }

        [After]
        public function tearDown():void
        {
            instance = null;
            onTest.removeAll();
        }

        [Test(async,timeout="500")]
        public function testAsync():void
        {
            Async.handleEvent(this, instance, SignalAsyncEvent.CALLED, signalCalledHandler);
            onTest.dispatch(argus[0], argus[1], argus[2], argus[3]);
        }
        //======================================================================
        //  Event handlers
        //======================================================================
        private function signalCalledHandler(event:SignalAsyncEvent, ...rest):void
        {
            assertEquals("Length of argumengs should be the same", argus.length, event.args.length);
            assertEquals(argus[0], event.args[0]);
            assertEquals(argus[1], event.args[1]);
            assertEquals(argus[2], event.args[2]);
            assertEquals(argus[3], event.args[3]);
        }
    }
}