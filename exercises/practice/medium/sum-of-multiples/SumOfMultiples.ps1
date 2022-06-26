Function Get-SumOfMultiples {
    <#
    .SYNOPSIS
    Given a number, find the sum of all the unique multiples of particular numbers up to
    but not including that number.

    .DESCRIPTION
    If we list all the natural numbers below 20 that are multiples of 3 or 5,
    we get 3, 5, 6, 9, 10, 12, 15, and 18.

    .PARAMETER Multiples
    An array of the factors 

    .PARAMETER Limit
    The value BELOW which we test for

    .EXAMPLE
    Get-SumOfMultiples -Multiples @(3, 5) -Limit 10
    
    Returns 23
    #>
    [CmdletBinding()]
    Param(
        [int[]]$multiples,
        [int]$limit
    )
    [array]$sum = @()
    foreach ($factor in $multiples) {
        [int]$count = 1
        [int]$multiple = 0
        while ($multiple -lt $limit) {
            [int]$multiple = $count * $factor
            if ($multiple -ge $limit) { break }
            if ($sum -notcontains $multiple) { $sum += $multiple }
            $count++
        }
    } 
    return ($sum | measure-object -sum).sum
}

Function Get-SumOfMultiples {
    <#
    .SYNOPSIS
    Given a number, find the sum of all the unique multiples of particular numbers up to
    but not including that number.

    .DESCRIPTION
    If we list all the natural numbers below 20 that are multiples of 3 or 5,
    we get 3, 5, 6, 9, 10, 12, 15, and 18.

    .PARAMETER Multiples
    An array of the factors 

    .PARAMETER Limit
    The value BELOW which we test for

    .EXAMPLE
    Get-SumOfMultiples -Multiples @(3, 5) -Limit 10
    
    Returns 23
    #>
    [CmdletBinding()]
    Param(
        [int[]]$multiples,
        [int]$limit
    )
    [int]$sum = 0
    for ([int]$count = 1; $count -lt $limit; $count++) {
        foreach ($multiple in $multiples) {
            if ($count % $multiple -eq 0) {
                $sum += $count
                break
            }
        }
    }
    return $sum
}