.class Lcom/laiwang/protocol/android/af$d;
.super Lcom/laiwang/protocol/android/af$b;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private d:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lv"    # J

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/laiwang/protocol/android/af$b;-><init>()V

    .line 214
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    .line 221
    iput-wide p1, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/af$b;)V
    .locals 2
    .param p1, "value"    # Lcom/laiwang/protocol/android/af$b;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/laiwang/protocol/android/af$b;-><init>()V

    .line 214
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    .line 217
    iput-object p1, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    .line 218
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 232
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public b()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$b;->b()[B

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 257
    :cond_0
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 258
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/laiwang/protocol/android/ao;->a(JI)[B

    move-result-object v0

    goto :goto_0

    .line 259
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
    .line 242
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 243
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    .line 250
    :goto_0
    return-wide v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/laiwang/protocol/android/af$d;->a:Lcom/laiwang/protocol/android/af$b;

    iget-object v0, v0, Lcom/laiwang/protocol/android/af$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    .line 247
    iget-wide v0, p0, Lcom/laiwang/protocol/android/af$d;->d:J

    goto :goto_0

    .line 250
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
