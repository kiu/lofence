function Decoder(bytes, port) {
  
  var decoded = {};
  
  if (port == 0x01 && bytes.length == 8) {
    
    decoded.round = bytes[0] << 8 | bytes[1];
    decoded.battery = bytes[2] << 8 | bytes[3];
    decoded.fence_positive = bytes[4] << 8 | bytes[5];
    decoded.fence_negative = bytes[6] << 8 | bytes[7];
    
    decoded.reset = 0;
    if (decoded.round === 0) {
      decoded.reset = 1;
    }
    
  }

  return decoded;
}
