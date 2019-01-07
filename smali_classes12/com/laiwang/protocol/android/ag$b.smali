.class public Lcom/laiwang/protocol/android/ag$b;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field private c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "totalSize"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/laiwang/protocol/android/ag$b;->a:I

    .line 52
    iput-wide p2, p0, Lcom/laiwang/protocol/android/ag$b;->b:J

    .line 53
    long-to-int v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/laiwang/protocol/android/ag$b;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "chunk"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 58
    const-string/jumbo v0, "chunk buffer overflow"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chunk buffer overflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/ag$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 63
    return-void
.end method
