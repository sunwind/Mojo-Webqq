package Mojo::Webqq::Plugin::FuckAndroid;
our $PRIORITY = 1;

my @reply = (
    "别在我面前提 %,ok?",
    "% 死全家，赶紧死...",
    "%，%，%，%..赶紧在地球上消失...",
    "% 就是个傻叉!!",
    "一提 % 就烦!!"
);
sub call {
    my $client = shift;
    $client->on(receive_message=>sub{
        my($client,$msg)=@_;
        return if not $msg->allow_plugin;
        return if $msg->content !~ /(安卓|android|google|谷歌|三星)/i;
        my $key_word = $1;$key_word=~s/\s+//;
        my $reply = $reply[int rand($#reply+1)];
        $reply=~s/%/$key_word/g;
        $client->reply_message($msg,$reply,sub{$_[1]->msg_from("bot")}) if $reply;
    });
}
1;

__END__
那天帮我老妈Android刷机，因为系统自动从4.4升级到5.0之后，手机一直发热 充电满了几个小时就没电了
刷完rom之后开机启动最后一步一定要输入三星的帐号和密码
输入法只有“语音输入”，要对着话筒讲话，再翻译成文字，不知道哪个sb搞的
没办法只能对着说，但提示连接不上google的服务，无法识别语音，然后也没办法添加其他键盘输入方式
然后就一直困在这里了，无法跳过去，大晚上的 老妈明天就要用，现在手机变成砖头，真是心急如麻，最后我苦思冥想了好几个小时 心里无数个草泥马 狂骂三星工程师或者rom制作者是一群傻逼，然后我发现 这款手机配置了一款手写笔，然后用手写板在输入框里点一下 终于可以手写输入了，注册个新的三星帐号，赶紧用手写笔输入帐号，但是当要在密码框里输入密码的时候，手写居然不支持…… ……支持……持……草泥马，输入帐号了，但是没办法输入密码 这怎么办，然后我又苦思冥想 各种百度 最后发现 先在可以输入的地方把密码输入好，然后再选择复制，然后再粘帖到密码框里 ，大晚上搞到了不知道几点，Android、三星、谷歌 我真是服了这群人了 这辈子都不想再碰Android手机了，被深深恶心到了，我觉得这是在挑战我作为地球高级智慧生物的底线，安装个应用还tm一堆乱七八糟的权限要确认，用装机助手刷个rom还tm一定要把我给root，装的rom没一个是纯净的
，应用管理器里都卸载了，根本看不到的应用，在屏幕上还可以看到图标 点击还可以运行，都不知道算怎么回事，设置菜单里各种莫名其妙的名称 看都看不懂，三星、谷歌这帮工程师真是够差 设计出来的东西完全不是站在用户的角度去想，三星，谷歌，Android死全家，求转发