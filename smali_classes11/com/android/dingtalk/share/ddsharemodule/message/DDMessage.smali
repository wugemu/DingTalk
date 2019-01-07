.class public Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;
.super Ljava/lang/Object;
.source "DDMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$Receiver;,
        Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DDMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "appIdContent"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v0, "com.alipay.sdk.channel.Intent.ACTION_MESSAGE"

    invoke-static {p0, p1, v0, p2}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appIdContent"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 52
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".permission.MM_MESSAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 31
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

    const v4, 0x1339e65

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string/jumbo v3, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v3, "android.intent.ding.EXTRA_CALLBACK_MESSAGE_CONTENT"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {p0, v2}, Lcom/android/dingtalk/share/ddsharemodule/plugin/SignatureCheck;->getMD5Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "md5String":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send dd message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", perm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/4 v3, 0x1

    return v3
.end method
