pragma solidity ^0.8.0;

contract NeuralNetworkPredictor {
    address public owner;
    string public modelEndpoint; // апи уже предобученной модели

    event PredictionRequested(address indexed requester, uint256 indexed requestId);
    event PredictionReceived(uint256 indexed requestId, string result);

    constructor(string memory _modelEndpoint) {
        owner = msg.sender;
        modelEndpoint = _modelEndpoint;
    }

    // тут она предсказывает
    function requestPrediction(uint256 requestId) public {
        emit PredictionRequested(msg.sender, requestId);
        // но на проде это через оракул
    }

    // Тут функция которая должна вызыватяс оракулом
    function receivePrediction(uint256 requestId, string memory result) public {
        require(msg.sender == owner, "Only the owner can call this function");
        emit PredictionReceived(requestId, result);
    }
}