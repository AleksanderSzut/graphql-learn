for stub in ../vendor/spatie/laravel-stubs/stubs/*.stub; do
	sed -i '1d' "$stub"
	{ echo '<?php\n\ndeclare(strict_types=1)'; cat "$stub"; }  > "$stub.tmp" && mv "$stub.tmp" "$stub"
done
