// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract Election {

struct Candidate {
    uint id;
    string name;
    uint voteCount;
}

mapping(uint=>Candidate) public candidates;
uint public candidateCount;

string public candidate;

    constructor() public {
        addCandidate("JJ");
        addCandidate("QQ");
        addCandidate("TT");
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        Candidate memory _newCandidate = Candidate(candidateCount, _name, 0);
        candidates[candidateCount] = _newCandidate;
    }
}