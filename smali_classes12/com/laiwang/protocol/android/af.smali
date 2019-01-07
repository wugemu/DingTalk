.class public Lcom/laiwang/protocol/android/af;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/af$b;,
        Lcom/laiwang/protocol/android/af$c;,
        Lcom/laiwang/protocol/android/af$d;,
        Lcom/laiwang/protocol/android/af$a;
    }
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/android/af$a;

.field private b:Lcom/laiwang/protocol/android/af$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "unsignedShort"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/laiwang/protocol/android/af$a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/laiwang/protocol/android/af$a;-><init>(II)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    .line 23
    new-instance v0, Lcom/laiwang/protocol/android/af$d;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lcom/laiwang/protocol/android/af$d;-><init>(J)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 24
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "unsignedInt"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/laiwang/protocol/android/af$a;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/laiwang/protocol/android/af$a;-><init>(II)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    .line 18
    new-instance v0, Lcom/laiwang/protocol/android/af$c;

    invoke-direct {v0, p2, p3}, Lcom/laiwang/protocol/android/af$c;-><init>(J)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/af;-><init>(I[B)V

    .line 28
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/laiwang/protocol/android/af$a;

    array-length v1, p2

    invoke-direct {v0, p1, v1}, Lcom/laiwang/protocol/android/af$a;-><init>(II)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    .line 32
    new-instance v0, Lcom/laiwang/protocol/android/af$b;

    invoke-direct {v0, p2}, Lcom/laiwang/protocol/android/af$b;-><init>([B)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 33
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/af;
    .locals 6
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[pack] load attr err, remain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/android/af$a;->a(Ljava/nio/ByteBuffer;)Lcom/laiwang/protocol/android/af$a;

    move-result-object v1

    .line 52
    .local v1, "attrHeader":Lcom/laiwang/protocol/android/af$a;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v3, v1, Lcom/laiwang/protocol/android/af$a;->b:I

    if-ge v2, v3, :cond_2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[pack] load attr header err, remain "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/laiwang/protocol/android/af$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lcom/laiwang/protocol/android/af;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/af;-><init>()V

    .line 59
    .local v0, "attr":Lcom/laiwang/protocol/android/af;
    iput-object v1, v0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    .line 60
    new-instance v3, Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget v5, v1, Lcom/laiwang/protocol/android/af$a;->b:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v2}, Lcom/laiwang/protocol/android/af$b;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, v0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 62
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, v1, Lcom/laiwang/protocol/android/af$a;->b:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    if-nez v0, :cond_0

    .line 69
    const-wide/16 v0, -0x1

    .line 81
    :goto_0
    return-wide v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    instance-of v0, v0, Lcom/laiwang/protocol/android/af$c;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    check-cast v0, Lcom/laiwang/protocol/android/af$c;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$c;->c()J

    move-result-wide v0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    instance-of v0, v0, Lcom/laiwang/protocol/android/af$d;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    check-cast v0, Lcom/laiwang/protocol/android/af$d;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$d;->c()J

    move-result-wide v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    iget v0, v0, Lcom/laiwang/protocol/android/af$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 77
    new-instance v0, Lcom/laiwang/protocol/android/af$d;

    iget-object v1, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/af$d;-><init>(Lcom/laiwang/protocol/android/af$b;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 78
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    check-cast v0, Lcom/laiwang/protocol/android/af$d;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$d;->c()J

    move-result-wide v0

    goto :goto_0

    .line 80
    :cond_3
    new-instance v0, Lcom/laiwang/protocol/android/af$c;

    iget-object v1, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/af$c;-><init>(Lcom/laiwang/protocol/android/af$b;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    .line 81
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    check-cast v0, Lcom/laiwang/protocol/android/af$c;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$c;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/af$a;->b(Ljava/nio/ByteBuffer;)V

    .line 43
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/af$b;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$b;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->a:Lcom/laiwang/protocol/android/af$a;

    iget v0, v0, Lcom/laiwang/protocol/android/af$a;->a:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x3

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/af;->b:Lcom/laiwang/protocol/android/af$b;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/af$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method
