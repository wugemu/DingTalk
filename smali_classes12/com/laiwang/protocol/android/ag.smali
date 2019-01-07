.class public Lcom/laiwang/protocol/android/ag;
.super Lcom/laiwang/protocol/android/ak;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ag$a;,
        Lcom/laiwang/protocol/android/ag$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 19
    sget-object v0, Lcom/laiwang/protocol/android/ak$c;->c:Lcom/laiwang/protocol/android/ak$c;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/ak;-><init>(ILcom/laiwang/protocol/android/ak$c;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V
    .locals 0
    .param p1, "header"    # Lcom/laiwang/protocol/android/ak$b;
    .param p2, "body"    # Lcom/laiwang/protocol/android/ak$a;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/ak;-><init>(Lcom/laiwang/protocol/android/ak$b;Lcom/laiwang/protocol/android/ak$a;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ak$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/laiwang/protocol/android/ag$b;)V
    .locals 4
    .param p1, "chunk"    # Lcom/laiwang/protocol/android/ag$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ag$a;->a:Lcom/laiwang/protocol/android/ag$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ag$a;->c:I

    iget v2, p1, Lcom/laiwang/protocol/android/ag$b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/android/ak$a;->a(II)V

    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v1, Lcom/laiwang/protocol/android/ag$a;->b:Lcom/laiwang/protocol/android/ag$a;

    iget v1, v1, Lcom/laiwang/protocol/android/ag$a;->c:I

    iget-wide v2, p1, Lcom/laiwang/protocol/android/ag$b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/ak$a;->a(IJ)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/ak$a;->b(Ljava/nio/ByteBuffer;)V

    .line 28
    return-void
.end method

.method public b()Lcom/laiwang/protocol/android/ag$b;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v4, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v5, Lcom/laiwang/protocol/android/ag$a;->a:Lcom/laiwang/protocol/android/ag$a;

    iget v5, v5, Lcom/laiwang/protocol/android/ag$a;->c:I

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/ak$a;->a(I)J

    move-result-wide v0

    .line 39
    .local v0, "chunkId":J
    iget-object v4, p0, Lcom/laiwang/protocol/android/ag;->b:Lcom/laiwang/protocol/android/ak$a;

    sget-object v5, Lcom/laiwang/protocol/android/ag$a;->b:Lcom/laiwang/protocol/android/ag$a;

    iget v5, v5, Lcom/laiwang/protocol/android/ag$a;->c:I

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/ak$a;->a(I)J

    move-result-wide v2

    .line 40
    .local v2, "chunkSize":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lcom/laiwang/protocol/android/ag$b;

    long-to-int v5, v0

    invoke-direct {v4, v5, v2, v3}, Lcom/laiwang/protocol/android/ag$b;-><init>(IJ)V

    goto :goto_0
.end method
