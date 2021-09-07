local SHOULD_RUN_TESTS = false -- Do not check in as true!

if SHOULD_RUN_TESTS then
	local Plugin = script.Parent.Parent
	local TestsFolderFramework = Plugin.Src

	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporterQuiet -- Remove Quiet to see output

	print("----- All PivotEditor Tests ------")
	TestBootstrap:run({ TestsFolderFramework }, TextReporter)
	print("----------------------------------")
end
