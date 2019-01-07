.class public Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;
.super Ljava/lang/Object;
.source "DDShareApiV2.java"

# interfaces
.implements Lcom/android/dingtalk/share/ddsharemodule/IDDShareApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "DDShareApiV2"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNeedSignatureCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "needSignatureCheck"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mNeedSignatureCheck:Z

    .line 34
    return-void
.end method

.method private static checkSumConsistent([B[B)Z
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "bytes1"    # [B

    .prologue
    const/4 v1, 0x0

    .line 282
    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    array-length v2, p1

    if-eqz v2, :cond_3

    .line 283
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 284
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "checkSumConsistent fail, length is different"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 287
    :cond_1
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 288
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "var2":I
    :cond_3
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "checkSumConsistent fail, invalid arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendReq(Landroid/content/Context;Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseReq"    # Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDSupportAPI(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq failed for dd not supported baseRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return v1

    .line 211
    :cond_0
    invoke-virtual {p2}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->getSupportVersion()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->getDDSupportAPI(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 212
    const-string/jumbo v2, "DDShareApiV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendReq failed for dd not supported baseRequest,minSupportVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->getSupportVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",dingtalkSupportSdkVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->getDDSupportAPI(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_1
    const-string/jumbo v2, "com.alibaba.android.rimet"

    invoke-virtual {p0, p1, v2}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq failed for dd app signature check failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p2}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->checkArgs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq checkArgs fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p2}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    .line 224
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->sendDDAuth(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->sendDDFriend(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method private sendReqToDing(Landroid/content/Context;Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseReq"    # Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDSupportDingAPI(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq failed for dd not supported ding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return v1

    .line 236
    :cond_0
    const-string/jumbo v2, "com.alibaba.android.rimet"

    invoke-virtual {p0, p1, v2}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq failed for dd app signature check failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p2}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->checkArgs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "sendReq checkArgs fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 245
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessageAct;->sendDing(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mNeedSignatureCheck:Z

    if-nez v1, :cond_0

    .line 253
    const/4 v1, 0x1

    .line 256
    :goto_0
    return v1

    .line 255
    :cond_0
    invoke-static {p1, p2}, Lcom/android/dingtalk/share/ddsharemodule/plugin/SignatureCheck;->getMD5Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "md5Signature":Ljava/lang/String;
    const-string/jumbo v1, "d2cef93010963d9273440efe6a05dd8d"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDDSupportAPI()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->getDDSupportAPI(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDDSupportAPI(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDAppInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    const-string/jumbo v1, "DDShareApiV2"

    const-string/jumbo v2, "open dd app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v0}, Lcom/android/dingtalk/share/ddsharemodule/plugin/DDVersionCheck;->getSdkVersionFromMetaData(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 56
    const-string/jumbo v8, "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 59
    const-string/jumbo v8, "android.intent.ding.EXTRA_COMMAND_TYPE"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v6, v7

    .line 86
    :goto_0
    return v6

    .line 61
    :sswitch_0
    new-instance v0, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;-><init>(Landroid/os/Bundle;)V

    .line 62
    .local v0, "authResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;
    invoke-interface {p2, v0}, Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;->onResp(Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;)V

    goto :goto_0

    .line 65
    .end local v0    # "authResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;
    :sswitch_1
    new-instance v2, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;-><init>(Landroid/os/Bundle;)V

    .line 66
    .local v2, "messageResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;
    invoke-interface {p2, v2}, Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;->onResp(Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;)V

    goto :goto_0

    .line 69
    .end local v2    # "messageResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;
    :sswitch_2
    new-instance v1, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;-><init>(Landroid/os/Bundle;)V

    .line 70
    .local v1, "getMessageReq":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;
    invoke-interface {p2, v1}, Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;->onReq(Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)V

    goto :goto_0

    .line 73
    .end local v1    # "getMessageReq":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;
    :sswitch_3
    new-instance v5, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;-><init>(Landroid/os/Bundle;)V

    .line 74
    .local v5, "showMessageReq":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;
    invoke-interface {p2, v5}, Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;->onReq(Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)V

    goto :goto_0

    .line 77
    .end local v5    # "showMessageReq":Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Req;
    :sswitch_4
    new-instance v4, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;

    invoke-direct {v4}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;-><init>()V

    .line 78
    .local v4, "sendAuthResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 79
    invoke-interface {p2, v4}, Lcom/android/dingtalk/share/ddsharemodule/IDDAPIEventHandler;->onResp(Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;)V

    goto :goto_0

    .line 85
    .end local v4    # "sendAuthResp":Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;
    :cond_0
    const-string/jumbo v6, "TAG"

    const-string/jumbo v8, "invalid argument"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 86
    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method public isDDAppInstalled()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDAppInstalled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDDAppInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.rimet"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.alibaba.android.rimet"

    .line 163
    invoke-virtual {p0, p1, v1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isDDSupportAPI()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDSupportAPI(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDDSupportAPI(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->getDDSupportAPI(Landroid/content/Context;)I

    move-result v0

    const v1, 0x1337ba1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDDSupportDingAPI()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDSupportDingAPI(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isDDSupportDingAPI(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public openDDApp()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->openDDApp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public openDDApp(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->isDDAppInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string/jumbo v2, "DDShareApiV2"

    const-string/jumbo v3, "open dd app failed, not installed or signature check failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return v1

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.alibaba.android.rimet"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v1, 0x1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DDShareApiV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start dd Main Activity fail, exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 127
    const-string/jumbo v1, "com.alibaba.android.rimet"

    invoke-virtual {p0, p1, v1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string/jumbo v1, "DDShareApiV2"

    const-string/jumbo v2, "register app failed for alipay app signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return v0

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    .line 132
    iput-object p2, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "register app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v0, "com.alibaba.android.rimet"

    sget-object v1, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->ACTION_APP_REGISTER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const-string/jumbo v1, "DDShareApiV2"

    const-string/jumbo v2, "register app context null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->registerApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendReq(Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z
    .locals 1
    .param p1, "baseReq"    # Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->sendReq(Landroid/content/Context;Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z

    move-result v0

    return v0
.end method

.method public sendReqToDing(Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z
    .locals 1
    .param p1, "baseReq"    # Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->sendReqToDing(Landroid/content/Context;Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;)Z

    move-result v0

    return v0
.end method

.method public unregisterApp()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->unregisterApp(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public unregisterApp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const-string/jumbo v0, "com.alibaba.android.rimet"

    invoke-virtual {p0, p1, v0}, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->checkSumConsistent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v0, "DDShareApiV2"

    const-string/jumbo v1, "unregister app failed for dd app signature check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregister app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v0, "com.alibaba.android.rimet"

    sget-object v1, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->ACTION_APP_UNREGISTER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dingtalk/share/ddsharemodule/DDShareApiV2;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/dingtalk/share/ddsharemodule/message/DDMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    const-string/jumbo v0, "DDShareApiV2"

    const-string/jumbo v1, "unregisterApp fail, appId is empty or context null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
