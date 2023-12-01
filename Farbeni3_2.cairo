#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello Beni(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello Beni,(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
