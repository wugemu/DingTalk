.class final Lkoh$f;
.super Lkoh$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lkoh;

.field private f:Z


# direct methods
.method constructor <init>(Lkoh;)V
    .locals 1

    .prologue
    .line 498
    iput-object p1, p0, Lkoh$f;->e:Lkoh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkoh$a;-><init>(Lkoh;B)V

    .line 499
    return-void
.end method


# virtual methods
.method public final close()V
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
    .line 517
    iget-boolean v0, p0, Lkoh$f;->b:Z

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-boolean v0, p0, Lkoh$f;->f:Z

    if-nez v0, :cond_1

    .line 519
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lkoh$f;->a(ZLjava/io/IOException;)V

    .line 521
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoh$f;->b:Z

    goto :goto_0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    .line 503
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "byteCount < 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_0
    iget-boolean v4, p0, Lkoh$f;->b:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_1
    iget-boolean v4, p0, Lkoh$f;->f:Z

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 513
    :cond_2
    :goto_0
    return-wide v0

    .line 507
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lkoh$a;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 508
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 509
    iput-boolean v6, p0, Lkoh$f;->f:Z

    .line 510
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lkoh$f;->a(ZLjava/io/IOException;)V

    move-wide v0, v2

    .line 511
    goto :goto_0
.end method
