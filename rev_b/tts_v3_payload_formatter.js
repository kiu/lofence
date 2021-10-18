function decodeUplink(input) {
  data = {};
  
  data.rounds = (input.bytes[0] << 8) + input.bytes[1];
  data.battery = (input.bytes[2] << 8) + input.bytes[3];
  data.fence_positive = (input.bytes[4] << 8) + input.bytes[5];
  data.fence_negative = (input.bytes[6] << 8) + input.bytes[7];
  
  return {
    data: data,
    warnings: [],
    errors: []
  };
}
