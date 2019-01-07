.class public Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;
.super Ljava/lang/Object;
.source "DDMessageAct.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DDMessageAct"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static initIntentByScheme(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static initSendByAuthIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "dingtalk://qr.dingtalk.com/im/send_auth.html"

    invoke-static {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initIntentByScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static initSendDingIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "dingtalk://qr.dingtalk.com/ding/create"

    invoke-static {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initIntentByScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static initSendFriendIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "dingtalk://qr.dingtalk.com/im/forward.html"

    invoke-static {v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initIntentByScheme(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static send(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/dingtalk/share/ddsharemodule/plugin/SignatureCheck;->getMD5Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "md5String":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    const v5, 0x1339e65

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string/jumbo v4, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v4, "android.intent.ding.EXTRA_ACTION_TYPE"

    const-string/jumbo v5, "outShare"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v4, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v4, "android.intent.ding.EXTRA_MESSAGE_APP_ID"

    invoke-virtual {p3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send dd message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 60
    :catch_0
    move-exception v4

    const-string/jumbo v4, "DDMessageAct"

    const-string/jumbo v5, "send v2 fail, target ActivityNotFound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DDMessageAct"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "send v2 fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendDDAuth(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initSendByAuthIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v1

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 93
    :cond_0
    const-string/jumbo v1, "DDMessageAct"

    const-string/jumbo v2, "send fail, invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendDDFriend(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-static {}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initSendFriendIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v1

    .line 29
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 28
    :cond_0
    const-string/jumbo v1, "DDMessageAct"

    const-string/jumbo v2, "send fail, invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sendDing(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-static {}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->initSendDingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v1

    .line 39
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 38
    :cond_0
    const-string/jumbo v1, "DDMessageAct"

    const-string/jumbo v2, "send fail, invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x0

    goto :goto_0
.end method
