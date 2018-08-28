using System;

namespace Prime.Services
{
    public class PrimeService
    {
        public bool IsPrime(int candidate)
        {
            if (candidate == 1)
            {
                return false;
            }

            int k;
            k = 0;
            for (int i = 1; i <= candidate; i++)
            {
                if (candidate % i == 0)
                {
                    k++;
                }
            }
            if (k == 2)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}