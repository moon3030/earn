<?php
// FB : Manggala Febri Valentino
// Not For Sale 
// THX TO SGB TEAM
function cat($code, $key, $id, $tiket, $meid, $jumlah, $wait){
    $x = 0; 
    while($x < $jumlah) {
		
		$body = 'sgbcode='.$code.'&sgbsecret='.$key.'&id='.$id.'&tiket='.$tiket.'&meid='.$meid.'';
				
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,"https://api-siptruk.c9users.io/news.php");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $body);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array("User-Agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36"));
        $server_output = curl_exec ($ch);
        curl_close ($ch);
    echo $server_output."\n";
        sleep($wait);
        $x++;
        flush();
    }
}
print "TUYUL COIN WATCH AND EARN\n\n";
echo "SGB CODE?\nInput : ";
$code = trim(fgets(STDIN));
echo "SGB SECRET KEY?\nInput : ";
$key = trim(fgets(STDIN));
echo "ID TASK?\nInput : ";
$id = trim(fgets(STDIN));
echo "TICKET LU?\nInput : ";
$tiket = trim(fgets(STDIN));
echo "MEID LU?\nInput : ";
$meid = trim(fgets(STDIN));
echo "Jumlah?\nInput : ";
$jumlah = trim(fgets(STDIN));
echo "Jeda? 0-9999999999 (ex:0)\nInput : ";
$wait = trim(fgets(STDIN));
$execute = cat($code, $key, $id, $tiket, $meid, $jumlah, $wait);
print $execute;
print "DONE ALL SEND\n";
?>
