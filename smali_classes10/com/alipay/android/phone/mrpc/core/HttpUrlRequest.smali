.class public Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
.super Lcom/alipay/android/phone/mrpc/core/Request;
.source "HttpUrlRequest.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private mReqData:[B

.field private mResetCookie:Z

.field private mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/Request;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mHeaders:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    .line 51
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mContentType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    .local p4, "tags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/Request;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    .line 66
    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mHeaders:Ljava/util/ArrayList;

    .line 67
    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    .line 68
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mContentType:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    if-ne p0, p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 230
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 231
    check-cast v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    .line 232
    .local v0, "other":Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    if-nez v3, :cond_4

    .line 233
    iget-object v3, v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    if-eqz v3, :cond_5

    move v1, v2

    .line 234
    goto :goto_0

    .line 235
    :cond_4
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    iget-object v4, v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 236
    goto :goto_0

    .line 237
    :cond_5
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 238
    iget-object v3, v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 239
    goto :goto_0

    .line 240
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 241
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqData()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const/4 v0, 0x1

    .line 215
    .local v0, "result":I
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    const-string/jumbo v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    const-string/jumbo v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 219
    :cond_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 220
    return v0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isResetCookie()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mResetCookie:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mContentType:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mHeaders:Ljava/util/ArrayList;

    .line 135
    return-void
.end method

.method public setReqData([B)V
    .locals 0
    .param p1, "reqData"    # [B

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mReqData:[B

    .line 106
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 0
    .param p1, "resetCookie"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mResetCookie:Z

    .line 199
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mTags:Ljava/util/Map;

    .line 164
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v0, "Url : %s,HttpHeader: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
