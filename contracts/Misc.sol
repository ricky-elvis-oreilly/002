// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./interfaces/IMisc.sol";

contract Misc {
  IMisc.LayerCallbackData public layerCallbackData;

  function setLayerCallbackData(
    address _contractCallbackAddress,
    bytes4 _startedCallbackFunctionSignature,
    bytes4 _successCallbackFunctionSignature,
    bytes4 _failureCallbackFunctionSignature
  ) public {
    layerCallbackData = IMisc.LayerCallbackData({
      contractCallbackAddress: _contractCallbackAddress,
      startedCallbackFunctionSignature: _startedCallbackFunctionSignature,
      successCallbackFunctionSignature: _successCallbackFunctionSignature,
      failureCallbackFunctionSignature: _failureCallbackFunctionSignature
    });
  }
}
