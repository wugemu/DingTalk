.class abstract Lkoh$a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected final a:Lokio/ForwardingTimeout;

.field protected b:Z

.field protected c:J

.field final synthetic d:Lkoh;


# direct methods
.method private constructor <init>(Lkoh;)V
    .locals 2

    .prologue
    .line 352
    iput-object p1, p0, Lkoh$a;->d:Lkoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lkoh$a;->d:Lkoh;

    iget-object v1, v1, Lkoh;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lkoh$a;->a:Lokio/ForwardingTimeout;

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkoh$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lkoh;B)V
    .locals 0
    .param p1, "x0"    # Lkoh;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lkoh$a;-><init>(Lkoh;)V

    return-void
.end method


# virtual methods
.method protected final a(ZLjava/io/IOException;)V
    .locals 7
    .param p1, "reuseConnection"    # Z
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x6

    .line 379
    iget-object v0, p0, Lkoh$a;->d:Lkoh;

    iget v0, v0, Lkoh;->e:I

    if-ne v0, v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lkoh$a;->d:Lkoh;

    iget v0, v0, Lkoh;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkoh$a;->d:Lkoh;

    iget v2, v2, Lkoh;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_2
    iget-object v0, p0, Lkoh$a;->a:Lokio/ForwardingTimeout;

    invoke-static {v0}, Lkoh;->a(Lokio/ForwardingTimeout;)V

    .line 384
    iget-object v0, p0, Lkoh$a;->d:Lkoh;

    iput v2, v0, Lkoh;->e:I

    .line 385
    iget-object v0, p0, Lkoh$a;->d:Lkoh;

    iget-object v0, v0, Lkoh;->b:Lknu;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lkoh$a;->d:Lkoh;

    iget-object v1, v0, Lkoh;->b:Lknu;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lkoh$a;->d:Lkoh;

    iget-wide v4, p0, Lkoh$a;->c:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lknu;->a(ZLknx;JLjava/io/IOException;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lkoh$a;->d:Lkoh;

    iget-object v1, v1, Lkoh;->c:Lokio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 364
    .local v2, "read":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 365
    iget-wide v4, p0, Lkoh$a;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lkoh$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    return-wide v2

    .line 368
    .end local v2    # "read":J
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkoh$a;->a(ZLjava/io/IOException;)V

    .line 370
    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lkoh$a;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method
