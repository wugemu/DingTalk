.class public Lcom/alipay/share/sdk/openapi/channel/APMessage;
.super Ljava/lang/Object;
.source "APMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;,
        Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.APMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "appIdContent"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "com.alipay.sdk.channel.Intent.ACTION_MESSAGE"

    invoke-static {p0, p1, v0, p2}, Lcom/alipay/share/sdk/openapi/channel/APMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appIdContent"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/share/sdk/openapi/channel/APMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 43
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverPermission"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".permission.MM_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    const v3, 0x1337966

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    sget-object v2, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    sget-object v2, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    sget-object v2, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/alipay/share/sdk/openapi/channel/MMessageUtil;->checkSum(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send ap message, intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", perm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v2, 0x1

    return v2
.end method
