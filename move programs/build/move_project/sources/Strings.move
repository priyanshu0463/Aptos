//using vector<u8> for representing byte string
module my_addrx::Strings{
    use std::debug;
    use std::string::utf8;
    
    fun greeting():vector<u8> {
        let greet:vector<u8> = b"Hello World!"; 
        return greet
    }


    #[test]
    fun testing(){
        let greet=greeting();
        debug::print(&greet); 
        debug::print(&utf8(greet)); 
    } 
}