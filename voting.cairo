// Indicate this file contains a starknet contract
%lang starknet
// pedersen fn, range check, ecdsa signature
%builtins pedersen range_check ecdsa

from starkware.cairo.common.cairo_builtins import HashBuiltin, SignatureBuiltin
from starkware.cairo.common.hash import hash2
from starkware.cairo.common.math import assert_not_zero
from starkware.cairo.common.math_cmp import is_le
from starkware.cairo.common.signature import verify_ecdsa_signature

// Storage variables
@storage_var
func poll_owner_public_key(poll_id:felt) -> (public_key: felt) :
end 

@storage_var
func registered_voters(poll_id : felt, voter_public_key : felt) -> (is_registered : felt):
end

@storage_var
func voting_state(poll_id:felt,answer: felt)->(n_votes: felt): 
end

@storage_var
func voter_state(poll_id:felt, voter_public_key: felt)->(isVoted:felt): 
end

//Functions
