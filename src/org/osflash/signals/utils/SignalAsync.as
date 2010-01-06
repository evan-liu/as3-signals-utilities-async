package org.osflash.signals.utils {
  import org.osflash.signals.Signal;

  import flash.events.EventDispatcher;
  /**
   * Utility call to test objects that has signals.
   *
   * @author eidiot
   */
  public class SignalAsync extends EventDispatcher {
    //==========================================================================
    //  Constructor
    //==========================================================================
    /**
     * Construct a <code>SignalAsync</code>.
     */
    public function SignalAsync(signal:Signal) {
      signal.addOnce(onCalled);
    }
    //==========================================================================
    //  Callbacks
    //==========================================================================
    private function onCalled(...args):void {
      dispatchEvent(new SignalAsyncEvent(SignalAsyncEvent.CALLED, args));
    }
  }
}