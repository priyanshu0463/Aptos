module my_addrx::prime_sum
{
    use std::debug::print;

    fun is_prime(x: u64): bool {
        if ( x < 2) {
             false;
        };

        let i = 2;
        while (i * i <= x ){
            if (x % i == 0 ){
                 false;
            };
            i = i + 1;
        };

        true
    }

    fun sum_prime_while(n: u64): u64 {
        let sum = 0;
        let i=2;  

        while (i <= n) {
            if (is_prime(i)) {
                sum = sum + i;
            };
            i = i + 1;
        };

        sum
    }

    #[test]
    fun testing()
    {
        let sum = sum_prime_while(10);
        print(&sum);
    }
}