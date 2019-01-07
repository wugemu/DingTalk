.class Lcom/laiwang/protocol/android/af$c;
.super Lcom/laiwang/protocol/android/af$b;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private d:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lv"    # J

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/laiwang/protocol/android/af$b;-><init>()V

    .line 265
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    .line 272
    iput-wide p1, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/af$b;)V
    .locals 2
    .param p1, "value"    # Lcom/laiwang/protocol/android/af$b;

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/laiwang/protocol/android/af$b;-><init>()V

    .line 265
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    .line 268
    iput-object p1, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    .line 269
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 283
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public b()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$b;->b()[B

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 308
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/laiwang/protocol/android/ao;->a(JI)[B

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 294
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    .line 301
    :goto_0
    return-wide v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$c;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    .line 298
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$c;->d:J

    goto :goto_0

    .line 301
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
