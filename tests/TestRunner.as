package
{
    import org.flexunit.internals.TraceListener;
    import org.flexunit.runner.FlexUnitCore;
    import org.osflash.signals.utils.SignalAsyncTest;

    import flash.display.Sprite;
    /**
     * @author eidiot
     */
    public class TestRunner extends Sprite
    {
        public function TestRunner()
        {
            super();
            var flexUnit:FlexUnitCore = new FlexUnitCore();
            flexUnit.addListener(new TraceListener());
            flexUnit.run(SignalAsyncTest);
        }
    }
}