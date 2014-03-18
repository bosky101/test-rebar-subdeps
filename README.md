test-rebar-subdeps
==================

temp repo to test if release includes sub-deps of the OTP app's deps

	make all

	find deps | grep jiffy

	find rel | grep jiffy

if both give the same, sub-deps have been copied to the release

Note:
- Adding deps to sub_dirs had NO effect

if they don't , make sure you're reltool.config has

	 {incl_cond, derived}

the above works, while {incl_cond, exclude} is more strict mode that does not include sub-deps

Other areas to verify:
- include the dep in {applications,[]} in testapp.app.src
- include the {erlkafka,load} or erlkafka, in the reltool {rel,"node",_} tuple
