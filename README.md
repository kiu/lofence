# LoFence
LoFence is a [LoRaWAN](https://en.wikipedia.org/wiki/LoRa#LoRaWAN) capable IoT electric fence monitoring system running on the [The Things Network](https://www.thethingsnetwork.org/).

![lofence](https://raw.githubusercontent.com/kiu/lofence/master/pics/lofence_revb_final_thumb.jpg)

# Backstory
A friend of mine is herding cattle and sheep on a small scale as a hobby. His setup is quite clever as his property has a creek running through, which enables him to let the animals live quite autonomously with minimal supervision. Unfortunately, he got called by the police a few times due to his sheep pulling a prison break. In theory a low maintenance system, but in reality things do happen. The car battery powering the electric fence energizer runs out of juice, a falling tree branch tears the fence down, or a tractor plows down a pole of the fence.

# Obvious solution
We need a monitoring system!

## Measuring
There are lots of ways to measure an electric fence. Try to hack the energizer’s built-in fault detection, measure current or do some fancy wave analysis of reflections on the line.

Too complicated for the initial build, let’s keep it simple by measuring voltage. Well, not a little voltage, but all the way up to 12 kV. Difficult, but a voltage divider with an op-amp will do fine. With this setup, we can measure any disconnects on the line between the energizer and the LoFence measuring point, even short circuits after the measuring point. Your mileage may vary though. This setup is heavily dependent on weather conditions, e.g. having dry soil will provide a different readout than after heavy rain.

## Connectivity
The more difficult challenge in a rural/agricultural area is connectivity. Cell coverage is quite spotty and of course it requires a monthly payment of some kind. Further, it’s such a 90’s solution to use a GSM module.

A few years ago LoRa appeared on the stage operating in the freely available [ISM bands](https://en.wikipedia.org/wiki/ISM_band) offering low speed, long range communication. Perfect for...sigh...IoT devices like the LoFence. While LoRa is great for point-to-point communication, LoRaWAN got established and offers a full suite of protocols enabling a standardized way to build communication networks based on LoRa. While there are commercial network operators like [Sigfox](https://www.sigfox.com) where you have to pay for their services, there is a global initiative called [The Things Network](https://www.thethingsnetwork.org/) to run an open LoRaWAN network that any device can join and use for free. Bingo.

Checking their [coverage map](https://www.thethingsnetwork.org/map) of course showed that the area of interest has no gateways in reach, but setting up a simple [gateway](https://raw.githubusercontent.com/kiu/lofence/master/pics/lofence_ttig.jpg) - in our case a [TTIG](https://www.thethingsnetwork.org/forum/t/ttig-the-things-indoor-gateway/22049) for ~80 Euro - easily solved the coverage problem. According to their [Fair Access Policy](https://www.thethingsnetwork.org/forum/t/limitations-data-rate-packet-size-30-seconds-uplink-and-10-messages-downlink-per-day-fair-access-policy/1300) our use-case of sending a few bytes of measurement data every few hours is perfectly fitted for their service. Let’s roll.

There are quite a few options to integrate LoRaWAN into your device. From the super cheap [RFM95W chipset](https://www.hoperf.com/modules/lora/RFM95.html) where your firmware has to do most of the action (e.g. used by the [Adafruit Feather](https://www.adafruit.com/product/3078)), up to the "expensive" turnkey solution like the [RN2483](https://www.microchip.com/wwwproducts/en/RN2483) which I chose. It does all the magic and will actively prevent you from breaking ISM band regulations regarding radio utilization. Nice.
 
## Build
The build is quite unspectacular. Spinning up a board with some AVR, put an antenna and the RN2483 on it, a big resistor divider with an op-amp and some resistors, debug LEDs and pin headers, an 18650 battery and a waterproof case. Et voila.

## Data Extraction
Having a node reporting its measurements to The Things Network is nice, but actually I want to do something with the data. Like sending an alert.

Extracting the data from TTN is easy, but I did it wrong anyways. First thing I stumbled upon was the [HTTP Integration](https://www.thethingsnetwork.org/docs/applications/http/). Everytime an uplink message is received from a node, the HTTP integration will trigger a POST message to a webserver of your choice. Great. So I wrote a Java service on my end to parse these messages and store them in a database for [grafana](https://grafana.com/) to [consume](https://raw.githubusercontent.com/kiu/lofence/master/pics/lofence_grafana_overview.png) later on. My implementation parses the uplink message, extracts the payload, stores the RSSI, SNR, number of gateways, etc. It can be found here: [ttn-http](https://github.com/kiu/ttn-http).

Later, I found out that there is a way nicer [MQTT Integration](https://www.thethingsnetwork.org/docs/applications/mqtt/), which also includes a ready to use Java implementation. A couple of hours could have been saved here.

The other thing I didn't figure out immediately is the [Payload Formats](https://raw.githubusercontent.com/kiu/lofence/master/pics/lofence_ttn_decoder.png) option in the TTN console. It lets you write simple javascript running inside The Things Network to decode your payload data and assign them to key-value pairs. When receiving a message through the HTTP Integration (or MQTT), that message will include the key-value pairs as json for easy consumption. Quite clever and easy to parse.

# Nitty-Gritty Details
Checkout the [pics](https://github.com/kiu/lofence/tree/master/pics) and [hardware](https://github.com/kiu/lofence/tree/master/rev_b) section including BOM, Schematic, PCB layout, firmware, etc.

# TTN
If you are inspired by this hack to build a LoRaWAN project on your own and join the The Things Network effort, register on their site and join their maker community on [slack](https://www.thethingsnetwork.org/community/toowoomba/post/join-us-on-slack).
