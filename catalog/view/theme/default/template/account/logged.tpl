<?php //echo $status_user ?>
<?php if(($status_user=="login")||($status_user=="register")) { ?>
<script>
//window.location = "/index.php?route=common/home&st=<?php echo $status_user ?>";
//window.location = "/";
</script>
<form action="/" name="logged" method="post">
<input type="hidden" name="st" value="<?php echo $status_user ?>" />
</form>
<script type="text/javascript">
document.forms["logged"].submit();

	
</script>
<?php } else if($status_user=="logged") { ?>
        <div class="popup-form__header">
			Здравствуйте, <?php echo $user_name ?>
		</div>
        <p><a style="color:#373737" href="/index.php?route=account/edit">Изменить контактную информацию</a></p>
        <p><a style="color:#373737" href="/index.php?route=account/password">Изменить свой пароль</a></p>
        <p><a style="color:#373737" href="/index.php?route=account/address">Изменить мои адреса</a></p>
<?php } ?>