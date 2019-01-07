.class final Lkol$a;
.super Lokio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lkol;


# direct methods
.method constructor <init>(Lkol;Lokio/Source;)V
    .locals 2
    .param p1, "this$0"    # Lkol;
    .param p2, "delegate"    # Lokio/Source;

    .prologue
    .line 207
    iput-object p1, p0, Lkol$a;->c:Lkol;

    .line 208
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkol$a;->a:Z

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkol$a;->b:J

    .line 209
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    iget-boolean v0, p0, Lkol$a;->a:Z

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkol$a;->a:Z

    .line 232
    iget-object v0, p0, Lkol$a;->c:Lkol;

    iget-object v1, v0, Lkol;->a:Lknu;

    const/4 v2, 0x0

    iget-object v3, p0, Lkol$a;->c:Lkol;

    iget-wide v4, p0, Lkol$a;->b:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lknu;->a(ZLknx;JLjava/io/IOException;)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkol$a;->a(Ljava/io/IOException;)V

    .line 227
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Lkol$a;->delegate()Lokio/Source;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 214
    .local v2, "read":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 215
    iget-wide v4, p0, Lkol$a;->b:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lkol$a;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    return-wide v2

    .line 218
    .end local v2    # "read":J
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lkol$a;->a(Ljava/io/IOException;)V

    .line 220
    throw v0
.end method
