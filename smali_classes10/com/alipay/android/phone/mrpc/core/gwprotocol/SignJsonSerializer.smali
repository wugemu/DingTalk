.class public Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;


# static fields
.field public static final APP_KEY_DEBUG:Ljava/lang/String; = "rpc-sdk"

.field public static final APP_KEY_ONLINE:Ljava/lang/String; = "rpc-sdk-online"


# instance fields
.field private mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

.field private mContext:Landroid/content/Context;

.field private mJsonSerializer:Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

.field private mSignTimestamp:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V
    .locals 2
    .param p1, "jsonSerializer"    # Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mSignTimestamp:J

    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    .line 40
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mContext:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    .line 42
    return-void
.end method

.method private buildSignNameValuePairs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    .local p1, "nvPairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "ts"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->getSignTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->sortNVPairList(Ljava/util/List;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 68
    .local v0, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    .end local v0    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    invoke-interface {v6}, Lcom/alipay/android/phone/mrpc/core/Config;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/alipay/android/phone/mrpc/core/Config;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "sign"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    return-void
.end method

.method private sortNVPairList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "nvPairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;-><init>(Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getRequestDataDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignTimestamp()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mSignTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mSignTimestamp:J

    .line 107
    :goto_0
    return-wide v0

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mSignTimestamp:J

    .line 107
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mSignTimestamp:J

    goto :goto_0
.end method

.method public packet()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "nvPairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->buildSignNameValuePairs(Ljava/util/List;)V

    .line 54
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v1

    return-object v1
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method
