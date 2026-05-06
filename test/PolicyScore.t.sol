// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(75, 107, 8, 9, 11);
        require(scorer.score(signal) == 227, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(67, 81, 10, 25, 13);
        require(scorer.score(signal) == 121, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(80, 106, 18, 15, 9);
        require(scorer.score(signal) == 188, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
