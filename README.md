test-rebar-subdeps
==================

temp repo to test if release includes sub-deps of the OTP app's deps

	make all

	find deps | grep jiffy

	find rel | grep jiffy

if both give the same, sub-deps have been copied to the release

if they don't , make sure you're reltool.config has

	 {incl_cond, derived}

the above works, while {incl_cond, exclude} is more strict mode that does not include sub-deps
