package org.osflash.signals.utils
{
    import org.flexunit.asserts.assertEquals;
    import org.osflash.signals.Signal;
    /**
     * @author eidiot
     */
    public class SignalAsyncTest
    {
        //======================================================================
        //  Test methods
        //======================================================================
        [Test(async)]
        public function test_proceedOnSignal():void 
        {
            var signal:Signal = new Signal();
            proceedOnSignal(this, signal);
            signal.dispatch();
        }
        [Test(async)] 
        public function test_handleSignal():void 
        {
            var signal:Signal = new Signal();
            handleSignal(this, signal, verify_handleSignal, 500, {"name":"Tom", "age":20});
            signal.dispatch("Tom", 20);
        }
        [Test(async)] 
        public function test_failOnSignal():void 
        {
            var signal:Signal = new Signal();
            failOnSignal(this, signal);
            //signal.dispatch();
        }
        [Test(async)] 
        public function test_registerFailureSignal():void 
        {
            var signal:Signal = new Signal();
            registerFailureSignal(this, signal);
            //signal.dispatch();
        }
        //======================================================================
        //  Verify methods
        //======================================================================
        private function verify_handleSignal(event:SignalAsyncEvent, data:Object):void 
        {
        	assertEquals(event.args[0], data.name);
        	assertEquals(event.args[1], data.age);
        }
    }
}