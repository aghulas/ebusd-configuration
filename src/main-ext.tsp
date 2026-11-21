// Extension variant of the configuration: the standard set (main.tsp) plus the composite-read
// carriers whose message IDs are longer than 7 bytes (four registers in one 50 22). These are
// rejected by a stock ebusd (`max message ID length exceeded`), so they are kept out of the
// standard set and compiled only here, for a fork ebusd that supports long IDs. The standard
// set (main.tsp) stays loadable by a stock ebusd; this file adds the long-ID carriers on top.
import "./main.tsp";
import "./wolf/08.w.bc1.ext.tsp";
import "./wolf/18.w.bc2.ext.tsp";
import "./wolf/75.w.fs2.ext.tsp";
import "./wolf/f5.w.fs3.ext.tsp";
