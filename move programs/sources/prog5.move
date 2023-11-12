module my_addrx::factorial
{
    use std::debug::print;

    fun calc_factorial(n: u64): u64 {
       if (n == 0 ){
            1
        } 
        else {
            n * calc_factorial(n - 1)
        }
    }

    #[test]
    fun testing()
    {
        let result = calc_factorial(5);
        print(&result);
    }
}
