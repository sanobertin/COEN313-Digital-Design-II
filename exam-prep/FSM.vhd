-- finite state machines

entity FSM is 
    {
    type RoomStatus is (empty, full, unknown, occupied);
    signal input : in std_logic;
    signal output : out std_logic;
    signal room_status : out RoomStatus;
    }
end entity;

architecture FSM of FSM is
    
    
=