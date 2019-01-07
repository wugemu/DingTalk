.class public abstract Lcom/huawei/android/pushagent/PushReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/PushReceiver$1;,
        Lcom/huawei/android/pushagent/PushReceiver$EventThread;,
        Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;,
        Lcom/huawei/android/pushagent/PushReceiver$SERVER;,
        Lcom/huawei/android/pushagent/PushReceiver$ACTION;,
        Lcom/huawei/android/pushagent/PushReceiver$KEY_TYPE;,
        Lcom/huawei/android/pushagent/PushReceiver$BOUND_KEY;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v1, "push_switch"

    invoke-direct {v0, p1, v1}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "notify_msg_enable"

    invoke-virtual {v0, v1}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "closePush_Notify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.huawei.android.pushselfshow.SelfShowReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "onReceive"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SelfShowReceiver class not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive method not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invokeSelfShow error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static final deregisterToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.huawei.android.push.intent.DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "device_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final enableReceiveNormalMsg(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v0, "push_switch"

    invoke-direct {v1, p0, v0}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "normal_msg_enable"

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final enableReceiveNotifyMsg(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v0, "push_switch"

    invoke-direct {v1, p0, v0}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "notify_msg_enable"

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPushState(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enter PushEntity:getPushState() pkgName"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.huawei.android.push.intent.GET_PUSH_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final getToken(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enter PushEntity:getToken() pkgName"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.huawei.android.push.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v1, "push_client_self_info"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "hasRequestToken"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNotifyBtnClick(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onNotifyClickMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPluginRsp(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onPushMsg(Landroid/content/Context;[BLjava/lang/String;)V
.end method

.method public onPushState(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enter PushMsgReceiver:onReceive(Intent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.huawei.android.push.intent.REGISTRATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "device_token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "device_token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "PushLogLightSC2559"

    const-string/jumbo v1, "get a deviceToken, but it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v3, "push_client_self_info"

    invoke-direct {v2, p1, v3}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "hasRequestToken"

    invoke-virtual {v2, v3}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "push_client_self_info"

    const-string/jumbo v5, "token_info"

    invoke-static {p1, v4, v5}, Lcom/huawei/android/pushagent/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const-string/jumbo v3, "hasRequestToken"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;Z)V

    const-string/jumbo v3, "token_info"

    invoke-virtual {v2, v3}, Lcom/huawei/android/pushagent/a/a/e;->d(Ljava/lang/String;)Z

    const-string/jumbo v2, "push_client_self_info"

    const-string/jumbo v3, "token_info"

    invoke-static {p1, v2, v3, v1}, Lcom/huawei/android/pushagent/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "deviceToken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pushMsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v1, "receiveType"

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Token:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    new-instance v1, Lcom/huawei/android/pushagent/PushReceiver$EventThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;-><init>(Lcom/huawei/android/pushagent/PushReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PushLogLightSC2559"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "call onReceive(intent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "PushLogLightSC2559"

    const-string/jumbo v1, "get a deviceToken, but do not requested token, and new token is equals old token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "com.huawei.android.push.intent.RECEIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "msg_data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lcom/huawei/android/pushagent/a/a/e;

    const-string/jumbo v2, "push_switch"

    invoke-direct {v1, p1, v2}, Lcom/huawei/android/pushagent/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "normal_msg_enable"

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "closePush_Normal:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string/jumbo v1, "msg_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "device_token"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "deviceToken"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pushMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v1, "receiveType"

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Msg:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/huawei/android/pushagent/PushReceiver$EventThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;-><init>(Lcom/huawei/android/pushagent/PushReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;->start()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "com.huawei.android.push.intent.RECEIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "click"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v1, "click"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pushMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "receiveType"

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_NotifyClick:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/huawei/android/pushagent/PushReceiver$EventThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;-><init>(Lcom/huawei/android/pushagent/PushReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;->start()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "com.huawei.android.push.intent.RECEIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "clickBtn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v1, "clickBtn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyId"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "pushMsg"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pushNotifyId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "receiveType"

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_ClickBtn:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/huawei/android/pushagent/PushReceiver$EventThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;-><init>(Lcom/huawei/android/pushagent/PushReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;->start()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "com.huawei.intent.action.PUSH_STATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v1, "push_state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "pushState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "receiveType"

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_PushState:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/huawei/android/pushagent/PushReceiver$EventThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;-><init>(Lcom/huawei/android/pushagent/PushReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/PushReceiver$EventThread;->start()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "com.huawei.intent.action.PUSH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "selfshow_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/huawei/android/pushagent/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "PushLogLightSC2559"

    const-string/jumbo v1, "unknowned message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public abstract onToken(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/pushagent/PushReceiver;->onToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
