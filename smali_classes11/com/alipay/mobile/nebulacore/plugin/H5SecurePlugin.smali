.class public Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;
.super Lipd;
.source "H5SecurePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5SecurePlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private rsa(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0xb

    const/16 v8, 0xa

    .line 33
    .line 1121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 34
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "action"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "text"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "content":Ljava/lang/String;
    const-string/jumbo v6, "key"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v6, "H5SecurePlugin"

    const-string/jumbo v7, "invalid text"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 41
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "error"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "h5RSA params (text and key) must not be empty"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 88
    :goto_0
    return-void

    .line 47
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string/jumbo v6, "encrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "decrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 48
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 49
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "error"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "h5RSA param action must be encrypt/decrypt"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 55
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const/4 v5, 0x0

    .line 56
    .local v5, "result":Ljava/lang/String;
    const-string/jumbo v6, "encrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 57
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 63
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 64
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "error"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v6, "encrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 66
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "Encrypt error"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_2
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 58
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const-string/jumbo v6, "decrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 68
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "Decrypt error"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const-string/jumbo v6, "KeyError"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 75
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 76
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "error"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v6, "encrypt"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 78
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "Encrypt key error"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_3
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 85
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 86
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "text"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 80
    :cond_8
    const-string/jumbo v6, "errorMessage"

    const-string/jumbo v7, "Decrypt key error"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;->rsa(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 29
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 20
    const-string/jumbo v0, "rsa"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 21
    return-void
.end method
