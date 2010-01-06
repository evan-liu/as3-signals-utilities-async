package org.osflash.signals.utils {
  import org.flexunit.asserts.assertEquals;
  import org.flexunit.async.Async;
  import org.osflash.signals.Signal;
  /**
   * @author eidiot
   */
  public class SignalAsyncTest {
    //==========================================================================
    //  Variables
    //==========================================================================
    private var instance:SignalAsync;
    private var onTest:Signal;
    //==========================================================================
    //  Public methods
    //==========================================================================
    [Before]
    public function setUp():void {
      onTest = new Signal();
      instance = new SignalAsync(onTest);
    }
    [After]
    public function tearDown():void {
      instance = null;
      onTest.removeAll();
    }
    [Test(async,timeout="500")]
    public function testAsync():void {
      Async.handleEvent(this, instance, SignalAsyncEvent.CALLED, signalCalledHandler);
      onTest.dispatch(7);
    }
    //==========================================================================
    //  Event handlers
    //==========================================================================
    private function signalCalledHandler(event:SignalAsyncEvent, ...rest):void {
      assertEquals(7, event.args[0]);
    }
  }
}