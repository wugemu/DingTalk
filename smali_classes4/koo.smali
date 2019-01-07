.class public final Lkoo;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkoo$c;,
        Lkoo$a;,
        Lkoo$b;
    }
.end annotation


# static fields
.field static final synthetic l:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lkom;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field final g:Lkoo$b;

.field final h:Lkoo$a;

.field final i:Lkoo$c;

.field final j:Lkoo$c;

.field k:Lokhttp3/internal/http2/ErrorCode;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lkoo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lkoo;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILkom;ZZLjava/util/List;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connection"    # Lkom;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkom;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkoo;->a:J

    .line 65
    new-instance v0, Lkoo$c;

    invoke-direct {v0, p0}, Lkoo$c;-><init>(Lkoo;)V

    iput-object v0, p0, Lkoo;->i:Lkoo$c;

    .line 66
    new-instance v0, Lkoo$c;

    invoke-direct {v0, p0}, Lkoo$c;-><init>(Lkoo;)V

    iput-object v0, p0, Lkoo;->j:Lkoo$c;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lkoo;->c:I

    .line 80
    iput-object p2, p0, Lkoo;->d:Lkom;

    .line 81
    iget-object v0, p2, Lkom;->m:Lkos;

    .line 82
    invoke-virtual {v0}, Lkos;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lkoo;->b:J

    .line 83
    new-instance v0, Lkoo$b;

    iget-object v1, p2, Lkom;->l:Lkos;

    invoke-virtual {v1}, Lkos;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lkoo$b;-><init>(Lkoo;J)V

    iput-object v0, p0, Lkoo;->g:Lkoo$b;

    .line 84
    new-instance v0, Lkoo$a;

    invoke-direct {v0, p0}, Lkoo$a;-><init>(Lkoo;)V

    iput-object v0, p0, Lkoo;->h:Lkoo$a;

    .line 85
    iget-object v0, p0, Lkoo;->g:Lkoo$b;

    iput-boolean p4, v0, Lkoo$b;->b:Z

    .line 86
    iget-object v0, p0, Lkoo;->h:Lkoo$a;

    iput-boolean p3, v0, Lkoo$a;->b:Z

    .line 87
    iput-object p5, p0, Lkoo;->m:Ljava/util/List;

    .line 88
    return-void
.end method

.method private d(Lokhttp3/internal/http2/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 253
    sget-boolean v1, Lkoo;->l:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_0
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v1, :cond_1

    .line 256
    monitor-exit p0

    .line 265
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-object v1, p0, Lkoo;->g:Lkoo$b;

    iget-boolean v1, v1, Lkoo$b;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v1, v1, Lkoo$a;->b:Z

    if-eqz v1, :cond_2

    .line 259
    monitor-exit p0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_2
    :try_start_1
    iput-object p1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    iget-object v0, p0, Lkoo;->d:Lkom;

    iget v1, p0, Lkoo;->c:I

    invoke-virtual {v0, v1}, Lkom;->b(I)Lkoo;

    .line 265
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 579
    iget-wide v0, p0, Lkoo;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lkoo;->b:J

    .line 580
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 581
    :cond_0
    return-void
.end method

.method public final a(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lokhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lkoo;->d(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lkoo;->d:Lkom;

    iget v1, p0, Lkoo;->c:I

    invoke-virtual {v0, v1, p1}, Lkom;->b(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lkoo;->g:Lkoo$b;

    iget-boolean v1, v1, Lkoo$b;->b:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lkoo;->g:Lkoo$b;

    iget-boolean v1, v1, Lkoo$b;->a:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v1, v1, Lkoo$a;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v1, v1, Lkoo$a;->a:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lkoo;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lkoo;->d(Lokhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lkoo;->d:Lkom;

    iget v1, p0, Lkoo;->c:I

    invoke-virtual {v0, v1, p1}, Lkom;->a(ILokhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v3, p0, Lkoo;->c:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 120
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lkoo;->d:Lkom;

    iget-boolean v3, v3, Lkom;->a:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkoo;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "servers cannot read response headers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 140
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkoo;->i:Lkoo$c;

    invoke-virtual {v1}, Lkoo$c;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_0
    :try_start_2
    iget-object v1, p0, Lkoo;->e:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lkoo;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lkoo;->i:Lkoo$c;

    invoke-virtual {v2}, Lkoo$c;->a()V

    throw v1

    :cond_1
    iget-object v1, p0, Lkoo;->i:Lkoo$c;

    invoke-virtual {v1}, Lkoo$c;->a()V

    .line 148
    iget-object v0, p0, Lkoo;->e:Ljava/util/List;

    .line 149
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    if-eqz v0, :cond_2

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lkoo;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    monitor-exit p0

    return-object v0

    .line 153
    :cond_2
    :try_start_4
    new-instance v1, Lokhttp3/internal/http2/StreamResetException;

    iget-object v2, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v1, v2}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final declared-synchronized c(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lokhttp3/internal/http2/ErrorCode;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 310
    iput-object p1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lokio/Sink;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lkoo;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkoo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    iget-object v0, p0, Lkoo;->h:Lkoo$a;

    return-object v0
.end method

.method final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 296
    sget-boolean v1, Lkoo;->l:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 298
    :cond_0
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v1, p0, Lkoo;->g:Lkoo$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkoo$b;->b:Z

    .line 300
    invoke-virtual {p0}, Lkoo;->a()Z

    move-result v0

    .line 301
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-nez v0, :cond_1

    .line 304
    iget-object v1, p0, Lkoo;->d:Lkom;

    iget v2, p0, Lkoo;->c:I

    invoke-virtual {v1, v2}, Lkom;->b(I)Lkoo;

    .line 306
    :cond_1
    return-void

    .line 302
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 464
    sget-boolean v2, Lkoo;->l:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 467
    :cond_0
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v2, p0, Lkoo;->g:Lkoo$b;

    iget-boolean v2, v2, Lkoo$b;->b:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lkoo;->g:Lkoo$b;

    iget-boolean v2, v2, Lkoo$b;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v2, v2, Lkoo$a;->b:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v2, v2, Lkoo$a;->a:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 469
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lkoo;->a()Z

    move-result v1

    .line 470
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    if-eqz v0, :cond_4

    .line 476
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v2}, Lkoo;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 480
    :cond_2
    :goto_1
    return-void

    .line 468
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 477
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 478
    iget-object v2, p0, Lkoo;->d:Lkom;

    iget v3, p0, Lkoo;->c:I

    invoke-virtual {v2, v3}, Lkom;->b(I)Lkoo;

    goto :goto_1
.end method

.method final g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 584
    iget-object v0, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v0, v0, Lkoo$a;->a:Z

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lkoo;->h:Lkoo$a;

    iget-boolean v0, v0, Lkoo$a;->b:Z

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_1
    iget-object v0, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_2

    .line 589
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lkoo;->k:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 591
    :cond_2
    return-void
.end method

.method final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 599
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    return-void

    .line 601
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 602
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
