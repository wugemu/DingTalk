.class public Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;
.super Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;
.source "JsonSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonSerializer"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private mExtParam:Ljava/lang/Object;

.field private mId:I

.field protected mRequestDataJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mId:I

    .line 49
    return-void
.end method


# virtual methods
.method public buildNameValuePairs(Ljava/util/List;)V
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mExtParam:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "extParam"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mExtParam:Ljava/lang/Object;

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "operationType"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mOperationType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "id"

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "scene"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "requestData"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mId:I

    return v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 180
    .local v1, "md5Digest":[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lhv;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "md5":Ljava/security/MessageDigest;
    .end local v1    # "md5Digest":[B
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getRequestDataJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    .line 166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo v0, "[]"

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public nvpairs2Bytes(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const-string/jumbo v1, "utf-8"

    invoke-static {p1, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
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
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->prePacket(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->postPacket(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v1

    return-object v1
.end method

.method public postPacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    return-void
.end method

.method public prePacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    return-void
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mExtParam:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mId:I

    .line 148
    return-void
.end method
