module my_addrx::odd
{
    use std::debug::print;
    

    
    fun sum_odd_while(n:u64) :u64
    {
        let sum=0;
        let i:u64=1;  
        while(i <= n && i%2!=0) 
        {
            sum=sum+i;
            i=i+1;  
        }; 
        sum 
    }
    
    
    



    #[test]
    fun testing()
    {
        let sum = sum_odd_while(10);
        print(&sum);
    }
}