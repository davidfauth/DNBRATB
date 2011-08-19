package business;

public class DNBCompany
{
    private String dunsNumber;
    private String companyName;
    private String country;
    
    public DNBCompany()
    {}
    
    public DNBCompany(String dunsNbr, String compName, String compCountry)
    {
    	dunsNumber = dunsNbr;
    	companyName = compName;
    	country = compCountry;
    }
    
    public void setDunsNumber(String f)
    {
    	dunsNumber = f;
    }
    public String getDunsNumber()
    { 
        return dunsNumber; 
    }
    
    public void setCompanyName(String l)
    {
    	companyName = l;
    }

    public String getCompanyName()
    { 
        return companyName; 
    }
    
    public void setCountry(String e)
    {
        country = e;
    }

    public String getCountry()
    { 
        return country; 
    }
}
