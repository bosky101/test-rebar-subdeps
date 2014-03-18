test-rebar-subdeps
==================

temp repo to test if release includes sub-deps of the OTP app's deps

	make all

	find deps | grep jiffy

	find rel | grep jiffy

if both give the same, sub-deps have been copied to the release
