# freebsd-dotnet-runtime-nightly
Nightly test runs from (https://github.com/dotnet/runtime/tree/main) for freebsd-x64

# FAQ
Wait what?
- Microsoft does not run tests for/on systems that they don't officially support
  - WHY?!
    - Likely because its a massive time/money/energy hole. Its totally understandable. This is a pain to maintain even with some degree of automation.
    
Will FreeBSD ever see official support?
- "Maybe but unlikely" for the above reason

Will Microsoft ever drop "community supported" platforms?
- Also "maybe but unlikely". They aren't Alphabet/Google (see: Chromium)

Don't full test runs take a while?
- Yes, that is why this is only done nightly
- Under my current system it takes about one hour for a full run with a cached repo

So, what is here?
- This produces no outputs here on GH but you should be able to view up to 30 days of test results.
- Currently, only FreeBSD-x64 builds are done. I do not have the hardware for FreeBSD-ARM64

Where???
- Here: https://dev.azure.com/IFailAt/freebsd-dotnet-runtime-nightly/_build?definitionId=17

So, What environment is this actually run under?
- FreeBSD 13.1-pCurrent AMD64 inside a jail under TrueNAS 13.1

Are there any significant differences between using TrueNAS and FreeBSD?
- There should not be but I am tracking an issue with dotNET that appears only under TrueNAS and not FreeBSD
- See here: https://github.com/sec/dotnet-core-freebsd-source-build/issues/15

Is this something I can run myself?
- Yes, but it needs Azure Pipelines Agent for FreeBSD-x64 (https://github.com/Thefrank/azure-pipelines-agent-freebsd). See the YML file for more information.
- If you want to take over this task, or donate VM space please contact me. A 10yr old server works great as a space-heater when its cold outside but a terrible air conditioning system when its hot out.

Sweet! How can I help?
- Mainly by donating your knowledge and expertise for AMD64 (https://github.com/dotnet/runtime/issues/14537) or ARM64 (https://github.com/dotnet/runtime/issues/71338)
- While not needed to maintain this, donations of VMs or physical hardware are always welcome
  - PRs?
    - Yes, I accept those
