<script>
var timer = 10;
var setTimer = setInterval(function() {
	
	if (timer > 1)
	{
		timer--;
	}
	else
	{
		clearInterval(setTimer);
		window.location.assign("<?= base_url() ?>");
	}
}, 1000);

</script>