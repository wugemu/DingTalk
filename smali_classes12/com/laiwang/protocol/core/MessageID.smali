.class public Lcom/laiwang/protocol/core/MessageID;
.super Ljava/lang/Object;
.source "MessageID.java"


# static fields
.field static RANDOM:Ljava/util/Random;

.field static SEQ_SEED:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field id:Ljava/lang/String;

.field seq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/core/MessageID;->RANDOM:Ljava/util/Random;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/laiwang/protocol/core/MessageID;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "seq"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/laiwang/protocol/core/MessageID;->id:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    .line 21
    return-void
.end method

.method private static _genMid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const/4 v2, 0x2

    new-array v1, v2, [B

    .line 54
    .local v1, "s":[B
    sget-object v2, Lcom/laiwang/protocol/core/MessageID;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 55
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    sget-object v2, Lcom/laiwang/protocol/core/MessageID;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Lcom/laiwang/protocol/android/cg;->b(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/android/cg;->a([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static genMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->_genMid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newMid()Lcom/laiwang/protocol/core/MessageID;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/laiwang/protocol/core/MessageID;

    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->genMid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/core/MessageID;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/core/MessageID;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    return v0
.end method

.method public increment()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    .line 37
    iget v0, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/laiwang/protocol/core/MessageID;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/protocol/core/MessageID;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
