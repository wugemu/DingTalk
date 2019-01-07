.class public Lcom/alipay/share/sdk/openapi/channel/APMessageAct;
.super Ljava/lang/Object;
.source "APMessageAct.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APSDK.APMessageAct"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x10000000

    const/4 v3, 0x0

    .line 20
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    const v5, 0x1337966

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v4, "actionType"

    const-string/jumbo v5, "outShare"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/alipay/share/sdk/openapi/channel/MMessageUtil;->checkSum(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_1

    .line 33
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send alipay message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const/4 v3, 0x1

    .line 51
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    return v3

    .line 35
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 40
    :catch_0
    move-exception v4

    const-string/jumbo v4, "APSDK.APMessageAct"

    const-string/jumbo v5, "send fail, target ActivityNotFound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    .line 43
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "APSDK.APMessageAct"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "send fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "APSDK.APMessageAct"

    const-string/jumbo v5, "send fail, invalid arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static sendToZFB(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000167&actionType=outShare"

    invoke-static {p0, v0, p1, p2}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
