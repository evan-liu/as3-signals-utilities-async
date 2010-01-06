package org.osflash.signals.utils {
  import flash.events.Event;
  /** Signal Async event.
   * @author eidiot
   */
  public class SignalAsyncEvent extends Event {
    //==========================================================================
    //  Class constants
    //==========================================================================
    public static const CALLED:String = "called";
    //==========================================================================
    //  Constructor
    //==========================================================================
    public function SignalAsyncEvent(type:String, args:Array) {
      super(type);
      _args = args;
    }
    //----------------------------------
    //  args
    //----------------------------------
    private var _args:Array;
    /**
     * Arguments of the called signal.
     */
    public function get args():Array {
      return _args;
    }
    //==========================================================================
    //  Overridden methods
    //==========================================================================
    override public function clone():Event {
      return new SignalAsyncEvent(type, _args);
    }
  }
}