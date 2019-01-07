.class public final Lmn;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# instance fields
.field public a:Lanetwork/channel/aidl/ParcelableRequest;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lanet/channel/statist/RequestStatistic;

.field private l:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;)V
    .locals 5
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v4, p0, Lmn;->b:Ljava/lang/String;

    .line 37
    iput-object v4, p0, Lmn;->c:Ljava/lang/String;

    .line 38
    iput-object v4, p0, Lmn;->d:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lmn;->l:Ljava/util/Map;

    .line 40
    iput v3, p0, Lmn;->e:I

    .line 41
    iput v3, p0, Lmn;->f:I

    .line 42
    iput v3, p0, Lmn;->g:I

    .line 43
    iput v3, p0, Lmn;->h:I

    .line 44
    iput v3, p0, Lmn;->i:I

    .line 45
    iput-object v4, p0, Lmn;->j:Ljava/lang/String;

    .line 46
    iput-object v4, p0, Lmn;->k:Lanet/channel/statist/RequestStatistic;

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "request is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    :try_start_0
    iput-object p1, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    .line 55
    invoke-virtual {p0}, Lmn;->c()V

    .line 57
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getRetryTime()I

    move-result v1

    iput v1, p0, Lmn;->g:I

    .line 58
    iget v1, p0, Lmn;->g:I

    if-ltz v1, :cond_1

    iget v1, p0, Lmn;->g:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 59
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lmn;->g:I

    .line 62
    :cond_2
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getConnectTimeout()I

    move-result v1

    iput v1, p0, Lmn;->h:I

    .line 63
    iget v1, p0, Lmn;->h:I

    if-gtz v1, :cond_3

    .line 64
    const/16 v1, 0x4e20

    iput v1, p0, Lmn;->h:I

    .line 67
    :cond_3
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lmn;->i:I

    .line 68
    iget v1, p0, Lmn;->i:I

    if-gtz v1, :cond_4

    .line 69
    const/16 v1, 0x4e20

    iput v1, p0, Lmn;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_4
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ANet.RequestConfig"

    const-string/jumbo v2, "RequestConfig init failed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v0, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmn;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmn;->j:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lmn;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 166
    iput-object p1, p0, Lmn;->b:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lmn;->c:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lmn;->b:Ljava/lang/String;

    invoke-static {v1}, Lla;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lmn;->c:Ljava/lang/String;

    .line 171
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmn;->d:Ljava/lang/String;

    .line 173
    :cond_0
    iput-object v2, p0, Lmn;->l:Ljava/util/Map;

    .line 174
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    iget v0, p0, Lmn;->e:I

    iget v1, p0, Lmn;->g:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    iget-object v1, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lmh;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string/jumbo v1, "^((?i)https:)?//"

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lmn;->a(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lanet/channel/statist/RequestStatistic;

    iget-object v2, p0, Lmn;->c:Ljava/lang/String;

    .line 1126
    iget-object v3, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v3}, Lanetwork/channel/aidl/ParcelableRequest;->getBizId()I

    move-result v3

    .line 161
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmn;->k:Lanet/channel/statist/RequestStatistic;

    .line 162
    iget-object v1, p0, Lmn;->k:Lanet/channel/statist/RequestStatistic;

    iget-object v2, p0, Lmn;->b:Ljava/lang/String;

    iput-object v2, v1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 163
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v1

    invoke-interface {v1, v0}, Lka;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    iget-object v4, p0, Lmn;->l:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lmn;->l:Ljava/util/Map;

    .line 209
    :goto_0
    return-object v4

    .line 189
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmn;->l:Ljava/util/Map;

    .line 190
    iget-object v4, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    .line 192
    .local v1, "header":Llc;
    invoke-interface {v1}, Llc;->a()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "Host"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ":host"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "Cookie"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    iget-object v4, p0, Lmn;->l:Ljava/util/Map;

    invoke-interface {v1}, Llc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .end local v1    # "header":Llc;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lmn;->a:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v4}, Lanetwork/channel/aidl/ParcelableRequest;->isCookieEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lmn;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 205
    iget-object v4, p0, Lmn;->l:Ljava/util/Map;

    const-string/jumbo v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lmn;->l:Ljava/util/Map;

    goto :goto_0
.end method
