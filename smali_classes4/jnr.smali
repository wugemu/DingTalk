.class public final Ljnr;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Ljnx;


# instance fields
.field public a:Ljava/lang/String;

.field private volatile b:Ljnt;

.field private volatile c:Ljnm;

.field private volatile d:I

.field private volatile e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lle;

.field private j:Ljns;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Ljnr;-><init>(Ljns;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljnr;)V
    .locals 2
    .param p1, "source"    # Ljnr;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljnr;->d:I

    .line 75
    iget-object v0, p1, Ljnr;->a:Ljava/lang/String;

    iput-object v0, p0, Ljnr;->a:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Ljnr;->e:Ljava/lang/String;

    iput-object v0, p0, Ljnr;->e:Ljava/lang/String;

    .line 77
    iget v0, p1, Ljnr;->d:I

    iput v0, p0, Ljnr;->d:I

    .line 78
    iget-object v0, p1, Ljnr;->f:Ljava/lang/String;

    iput-object v0, p0, Ljnr;->f:Ljava/lang/String;

    .line 79
    iget-boolean v0, p1, Ljnr;->g:Z

    iput-boolean v0, p0, Ljnr;->g:Z

    .line 80
    iget-boolean v0, p0, Ljnr;->g:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lanetwork/channel/degrade/DegradableNetwork;

    sget-object v1, Ltv/danmaku/ijk/media/player/TaoSystemUtils;->sApplication:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljnr;->i:Lle;

    .line 83
    :cond_0
    iget-object v0, p1, Ljnr;->h:Ljava/lang/String;

    iput-object v0, p0, Ljnr;->h:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Ljnr;->j:Ljns;

    iput-object v0, p0, Ljnr;->j:Ljns;

    .line 85
    return-void
.end method

.method private constructor <init>(Ljns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "mimeCache"    # Ljns;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .param p5, "useNewNet"    # Z

    .prologue
    .line 71
    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljnr;-><init>(Ljns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "mimeCache"    # Ljns;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .param p5, "useNewNet"    # Z
    .param p6, "playToken"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljnr;->d:I

    .line 89
    invoke-static {p2}, Ljnu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljnr;->a:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Ljnr;->e:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Ljnr;->f:Ljava/lang/String;

    .line 92
    iput-boolean p5, p0, Ljnr;->g:Z

    .line 93
    iget-boolean v0, p0, Ljnr;->g:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lanetwork/channel/degrade/DegradableNetwork;

    sget-object v1, Ltv/danmaku/ijk/media/player/TaoSystemUtils;->sApplication:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljnr;->i:Lle;

    .line 96
    :cond_0
    iput-object p6, p0, Ljnr;->h:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Ljnr;->j:Ljns;

    .line 98
    return-void
.end method

.method private constructor <init>(Ljns;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "mimeCache"    # Ljns;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "useNewNet"    # Z

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {p2}, Ljnw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljnr;-><init>(Ljns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljns;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "mimeCache"    # Ljns;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "useNewNet"    # Z
    .param p5, "playToken"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p2}, Ljnw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljnr;-><init>(Ljns;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 68
    return-void
.end method

.method private a(II)Lll;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "redirectCount":I
    iget-object v5, p0, Ljnr;->a:Ljava/lang/String;

    .line 233
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Ljnr;->i:Lle;

    if-nez v6, :cond_0

    .line 234
    new-instance v6, Lanetwork/channel/degrade/DegradableNetwork;

    sget-object v7, Ltv/danmaku/ijk/media/player/TaoSystemUtils;->sApplication:Landroid/content/Context;

    invoke-direct {v6, v7}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Ljnr;->i:Lle;

    .line 237
    :cond_0
    new-instance v4, Lmo;

    invoke-direct {v4, v5}, Lmo;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "request":Llj;
    if-lez p1, :cond_1

    .line 239
    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Llj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    iget-object v6, p0, Ljnr;->i:Lle;

    invoke-interface {v6, v4}, Lle;->b(Llj;)Lll;

    move-result-object v1

    .line 247
    .local v1, "connection":Lll;
    invoke-interface {v1}, Lll;->b()I

    move-result v0

    .line 248
    .local v0, "code":I
    const/16 v6, 0x12d

    if-eq v0, v6, :cond_2

    const/16 v6, 0x12e

    if-eq v0, v6, :cond_2

    const/16 v6, 0x12f

    if-ne v0, v6, :cond_4

    :cond_2
    const/4 v3, 0x1

    .line 249
    .local v3, "redirected":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 250
    new-instance v6, Ljnm;

    invoke-direct {v6, v1}, Ljnm;-><init>(Lll;)V

    const-string/jumbo v7, "Location"

    invoke-virtual {v6, v7}, Ljnm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    iput-object v5, p0, Ljnr;->a:Ljava/lang/String;

    .line 252
    add-int/lit8 v2, v2, 0x1

    .line 253
    invoke-interface {v1}, Lll;->e()V

    .line 255
    :cond_3
    const/4 v6, 0x5

    if-le v2, v6, :cond_5

    .line 256
    new-instance v6, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Too many redirects: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 248
    .end local v3    # "redirected":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 258
    .restart local v3    # "redirected":Z
    :cond_5
    if-nez v3, :cond_0

    .line 259
    return-object v1
.end method

.method private b(II)Ljava/net/HttpURLConnection;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "redirectCount":I
    iget-object v6, p0, Ljnr;->a:Ljava/lang/String;

    .line 295
    .local v6, "url":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 296
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v8, "cdnIp"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "cdnIp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 298
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    :cond_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 301
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 302
    if-lez p1, :cond_2

    .line 303
    const-string/jumbo v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "bytes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 310
    const-string/jumbo v8, "Host"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_3
    iget-object v8, p0, Ljnr;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 313
    const-string/jumbo v8, "User-Agent"

    iget-object v9, p0, Ljnr;->f:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 316
    .local v1, "code":I
    const/16 v8, 0x12d

    if-eq v1, v8, :cond_5

    const/16 v8, 0x12e

    if-eq v1, v8, :cond_5

    const/16 v8, 0x12f

    if-ne v1, v8, :cond_7

    :cond_5
    const/4 v4, 0x1

    .line 317
    .local v4, "redirected":Z
    :goto_0
    if-eqz v4, :cond_6

    .line 318
    const-string/jumbo v8, "Location"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 319
    iput-object v6, p0, Ljnr;->a:Ljava/lang/String;

    .line 320
    add-int/lit8 v3, v3, 0x1

    .line 321
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 323
    :cond_6
    const/4 v8, 0x5

    if-le v3, v8, :cond_8

    .line 324
    new-instance v7, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Too many redirects: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "redirected":Z
    :cond_7
    move v4, v7

    .line 316
    goto :goto_0

    .line 326
    .restart local v4    # "redirected":Z
    :cond_8
    if-nez v4, :cond_0

    .line 328
    return-object v2
.end method

.method private b(I)Lll;
    .locals 8
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x2710

    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, "redirectCount":I
    :cond_0
    new-instance v4, Lmo;

    iget-object v5, p0, Ljnr;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lmo;-><init>(Ljava/lang/String;)V

    .line 269
    .local v4, "request":Llj;
    const-string/jumbo v5, "HEAD"

    invoke-interface {v4, v5}, Llj;->b(Ljava/lang/String;)V

    .line 271
    invoke-interface {v4, v6}, Llj;->b(I)V

    .line 272
    invoke-interface {v4, v6}, Llj;->c(I)V

    .line 274
    iget-object v5, p0, Ljnr;->i:Lle;

    invoke-interface {v5, v4}, Lle;->b(Llj;)Lll;

    move-result-object v1

    .line 275
    .local v1, "connection":Lll;
    invoke-interface {v1}, Lll;->b()I

    move-result v0

    .line 276
    .local v0, "code":I
    const/16 v5, 0x12d

    if-eq v0, v5, :cond_1

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_1

    const/16 v5, 0x12f

    if-ne v0, v5, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 277
    .local v3, "redirected":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 279
    invoke-interface {v1}, Lll;->e()V

    .line 281
    :cond_2
    const/4 v5, 0x5

    if-le v2, v5, :cond_4

    .line 282
    new-instance v5, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Too many redirects: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    .end local v3    # "redirected":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 284
    .restart local v3    # "redirected":Z
    :cond_4
    if-nez v3, :cond_0

    .line 285
    return-object v1
.end method

.method private c(I)Ljava/net/HttpURLConnection;
    .locals 11
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x2710

    const/4 v7, 0x0

    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, "redirectCount":I
    iget-object v6, p0, Ljnr;->a:Ljava/lang/String;

    .line 339
    .local v6, "url":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 340
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v8, "cdnIp"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "cdnIp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 342
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 344
    :cond_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 345
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 346
    const-string/jumbo v8, "HEAD"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 349
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 352
    const-string/jumbo v8, "Host"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    iget-object v8, p0, Ljnr;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 355
    const-string/jumbo v8, "User-Agent"

    iget-object v9, p0, Ljnr;->f:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 358
    .local v1, "code":I
    const/16 v8, 0x12d

    if-eq v1, v8, :cond_4

    const/16 v8, 0x12e

    if-eq v1, v8, :cond_4

    const/16 v8, 0x12f

    if-ne v1, v8, :cond_6

    :cond_4
    const/4 v4, 0x1

    .line 359
    .local v4, "redirected":Z
    :goto_0
    if-eqz v4, :cond_5

    .line 360
    const-string/jumbo v8, "Location"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    iput-object v6, p0, Ljnr;->a:Ljava/lang/String;

    .line 362
    add-int/lit8 v3, v3, 0x1

    .line 363
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 365
    :cond_5
    const/4 v8, 0x5

    if-le v3, v8, :cond_7

    .line 366
    new-instance v7, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Too many redirects: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "redirected":Z
    :cond_6
    move v4, v7

    .line 358
    goto :goto_0

    .line 368
    .restart local v4    # "redirected":Z
    :cond_7
    if-nez v4, :cond_0

    .line 370
    return-object v2
.end method

.method private d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    :try_start_0
    iget-boolean v2, p0, Ljnr;->g:Z

    if-eqz v2, :cond_2

    .line 191
    new-instance v1, Ljnm;

    const/16 v2, 0x2710

    invoke-direct {p0, v2}, Ljnr;->b(I)Lll;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnm;-><init>(Lll;)V

    .line 195
    .local v1, "urlConnection":Ljnm;
    :goto_0
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljnm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljnr;->e:Ljava/lang/String;

    .line 196
    const-string/jumbo v2, "Content-Length"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljnm;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljnr;->d:I

    .line 3212
    iget-object v2, p0, Ljnr;->j:Ljns;

    if-eqz v2, :cond_0

    .line 3213
    iget-object v2, p0, Ljnr;->j:Ljns;

    iget-object v3, p0, Ljnr;->a:Ljava/lang/String;

    iget v4, p0, Ljnr;->d:I

    iget-object v5, p0, Ljnr;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Ljns;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljnr;->c:Ljnm;

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Ljnr;->c:Ljnm;

    invoke-virtual {v2}, Ljnm;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .end local v1    # "urlConnection":Ljnm;
    :cond_1
    :goto_1
    return-void

    .line 193
    :cond_2
    :try_start_2
    new-instance v1, Ljnm;

    const/16 v2, 0x2710

    invoke-direct {p0, v2}, Ljnr;->c(I)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnm;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "urlConnection":Ljnm;
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "urlConnection":Ljnm;
    :catch_1
    move-exception v2

    .line 203
    :try_start_3
    iget-object v2, p0, Ljnr;->c:Ljnm;

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Ljnr;->c:Ljnm;

    invoke-virtual {v2}, Ljnm;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 205
    :catch_2
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 203
    :try_start_4
    iget-object v3, p0, Ljnr;->c:Ljnm;

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Ljnr;->c:Ljnm;

    invoke-virtual {v3}, Ljnm;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 207
    :cond_3
    :goto_2
    throw v2

    .line 205
    :catch_3
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Ljnr;->j:Ljns;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Ljnr;->j:Ljns;

    iget-object v2, p0, Ljnr;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljns;->a(Ljava/lang/String;)Ljnz;

    move-result-object v0

    .line 220
    .local v0, "urlMime":Ljnz;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljnz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljnz;->a()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 221
    invoke-virtual {v0}, Ljnz;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljnr;->e:Ljava/lang/String;

    .line 222
    invoke-virtual {v0}, Ljnz;->a()I

    move-result v1

    iput v1, p0, Ljnr;->d:I

    .line 225
    .end local v0    # "urlMime":Ljnz;
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v1, -0x80000000

    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljnr;->d:I

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Ljnr;->e()V

    .line 105
    :cond_0
    iget v0, p0, Ljnr;->d:I

    if-ne v0, v1, :cond_1

    .line 106
    invoke-direct {p0}, Ljnr;->d()V

    .line 108
    :cond_1
    iget v0, p0, Ljnr;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([B)I
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    iget-object v2, p0, Ljnr;->b:Ljnt;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading data from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": connection is absent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    :try_start_0
    iget-object v2, p0, Ljnr;->b:Ljnt;

    .line 3044
    iget-object v3, v2, Ljnt;->a:Llp;

    if-eqz v3, :cond_1

    .line 3045
    iget-object v2, v2, Ljnt;->a:Llp;

    invoke-interface {v2, p1}, Llp;->a([B)I

    move-result v2

    .line 3048
    :goto_0
    return v2

    .line 3047
    :cond_1
    iget-object v3, v2, Ljnt;->b:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_2

    .line 3048
    iget-object v2, v2, Ljnt;->b:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, p1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 3050
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e1":Ljava/io/InterruptedIOException;
    new-instance v2, Lcom/taobao/taobaoavsdk/cache/library/InterruptedProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Reading source "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/taobao/taobaoavsdk/cache/library/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .end local v1    # "e1":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading data from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(I)V
    .locals 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    :try_start_0
    iget-boolean v1, p0, Ljnr;->g:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljnm;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Ljnr;->a(II)Lll;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnm;-><init>(Lll;)V

    iput-object v1, p0, Ljnr;->c:Ljnm;

    .line 119
    :goto_0
    iget-object v1, p0, Ljnr;->c:Ljnm;

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljnm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljnr;->e:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Ljnr;->c:Ljnm;

    .line 1061
    iget-object v1, v2, Ljnm;->a:Lll;

    if-eqz v1, :cond_1

    .line 1062
    new-instance v1, Ljnt;

    iget-object v2, v2, Ljnm;->a:Lll;

    invoke-interface {v2}, Lll;->a()Llp;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnt;-><init>(Llp;)V

    .line 120
    :goto_1
    iput-object v1, p0, Ljnr;->b:Ljnt;

    .line 121
    iget-object v3, p0, Ljnr;->c:Ljnm;

    iget-object v1, p0, Ljnr;->c:Ljnm;

    .line 1070
    iget-object v2, v1, Ljnm;->a:Lll;

    if-eqz v2, :cond_3

    .line 1071
    iget-object v1, v1, Ljnm;->a:Lll;

    invoke-interface {v1}, Lll;->b()I

    move-result v1

    move v2, v1

    .line 1128
    :goto_2
    const-string/jumbo v1, "Content-Length"

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljnm;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1129
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 121
    :goto_3
    iput v1, p0, Ljnr;->d:I

    .line 124
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljnm;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Ljnr;->b(II)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnm;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object v1, p0, Ljnr;->c:Ljnm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error opening connection for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, v2, Ljnm;->b:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 1064
    new-instance v1, Ljnt;

    iget-object v2, v2, Ljnm;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnt;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 1066
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1072
    :cond_3
    iget-object v2, v1, Ljnm;->b:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    .line 1073
    iget-object v1, v1, Ljnm;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    move v2, v1

    goto :goto_2

    .line 1075
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 1129
    :cond_5
    const/16 v3, 0xce

    if-ne v2, v3, :cond_6

    add-int/2addr v1, p1

    goto :goto_3

    :cond_6
    iget v1, p0, Ljnr;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public final declared-synchronized b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljnr;->b:Ljnt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 150
    :try_start_1
    iget-object v1, p0, Ljnr;->b:Ljnt;

    .line 2035
    iget-object v2, v1, Ljnt;->a:Llp;

    if-eqz v2, :cond_0

    .line 2036
    iget-object v2, v1, Ljnt;->a:Llp;

    invoke-static {v2}, Ljnw;->a(Llp;)V

    .line 2038
    :cond_0
    iget-object v2, v1, Ljnt;->b:Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_1

    .line 2039
    iget-object v1, v1, Ljnt;->b:Ljava/io/BufferedInputStream;

    invoke-static {v1}, Ljnw;->a(Ljava/io/Closeable;)V

    .line 151
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ljnr;->b:Ljnt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljnr;->c:Ljnm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 158
    :try_start_3
    iget-object v1, p0, Ljnr;->c:Ljnm;

    invoke-virtual {v1}, Ljnm;->b()V

    .line 159
    iget-object v1, p0, Ljnr;->c:Ljnm;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2136
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "playToken="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljnr;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljnm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2137
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2138
    const-string/jumbo v2, "Page_Video"

    sget-object v3, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    const-string/jumbo v4, "TBNetStatistic"

    invoke-static {v2, v3, v4, v1}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Ljnr;->c:Ljnm;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :cond_3
    monitor-exit p0

    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v1, "HttpUrlSource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " HttpUrlSource inputStream close error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2140
    :catch_1
    move-exception v1

    .line 2141
    :try_start_7
    const-string/jumbo v2, "TBNetStatistic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "commitTBNetData error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v1, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;

    const-string/jumbo v2, "Error disconnecting HttpUrlConnection"

    invoke-direct {v1, v2, v0}, Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/taobaoavsdk/cache/library/ProxyCacheException;
        }
    .end annotation

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljnr;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Ljnr;->e()V

    .line 381
    :cond_0
    iget-object v0, p0, Ljnr;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0}, Ljnr;->d()V

    .line 384
    :cond_1
    iget-object v0, p0, Ljnr;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HttpUrlSource{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljnr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
