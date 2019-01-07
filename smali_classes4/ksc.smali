.class public final Lksc;
.super Lksh;
.source "LimitedInputStream.java"


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lksh;-><init>(Ljava/io/InputStream;)V

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Limit may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-wide p2, p0, Lksc;->b:J

    .line 35
    return-void
.end method

.method private a()V
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
    .line 38
    iget-wide v0, p0, Lksc;->a:J

    iget-wide v2, p0, Lksc;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Input stream limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method private b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 64
    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lksc;->b:J

    iget-wide v4, p0, Lksc;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lksc;->a()V

    .line 46
    invoke-super {p0}, Lksh;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lksc;->a()V

    .line 52
    invoke-direct {p0}, Lksc;->b()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 53
    invoke-super {p0, p1, p2, p3}, Lksh;->read([BII)I

    move-result v0

    return v0
.end method

.method public final skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lksc;->a()V

    .line 59
    invoke-direct {p0}, Lksc;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 60
    invoke-super {p0, p1, p2}, Lksh;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
