Function Get-BobResponse() {
    <#
    .SYNOPSIS
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.
    
    .DESCRIPTION
    Bob is a lackadaisical teenager. In conversation, his responses are very limited.

    Bob answers "Sure." if you ask him a question.

    He answers "Whoa, chill out!" if you yell at him.

    He answers "Calm down, I know what I"m doing!" if you yell a question at him.

    He says "Fine. Be that way!" if you address him without actually saying
    anything.

    He answers "Whatever." to anything else.
    
    .PARAMETER HeyBob
    The sentence you say to Bob.
    
    .EXAMPLE
    Get-BobResponse -HeyBob "Hi Bob"
    #>
    [CmdletBinding()]
    Param(
        [string]$heyBob
    )
    $responses = [PSCustomObject]@{
        question     = [string]"Sure.";
        yell         = [string]"Whoa, chill out!";
        yellQuestion = [string]"Calm down, I know what I'm doing!";
        nothing      = [string]"Fine. Be that way!";
        default      = [string]"Whatever.";
    }
    [boolean]$yelling = $false
    [boolean]$question = $false
    $heyBob = $heyBob.trim()
    if (($heyBob.toUpper() -ceq $heyBob) -and ($heyBob -cmatch "[A-Za-z]")) { $yelling = $true }
    if ($heyBob[$heyBob.length - 1] -eq "?") { $question = $true }

    if ([string]::IsNullOrEmpty($heyBob)) {return $responses.nothing}
    if ($question -and $yelling ) { return $responses.yellQuestion }
    if ($question) { return $responses.question }
    if ($yelling) { return $responses.yell }
    return $responses.default
}