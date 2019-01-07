.class public final Lcom/laiwang/lws/protocol/Attributes$b;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/lws/protocol/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 4
    .param p1, "in"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 180
    invoke-static {p1, v1, v0}, Ljab;->c([BII)I

    move-result v2

    iput v2, p0, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    .line 1083
    array-length v2, p1

    if-le v3, v2, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byte array length error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1088
    shl-int/lit8 v1, v1, 0x8

    .line 1089
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    int-to-long v0, v1

    iput-wide v0, p0, Lcom/laiwang/lws/protocol/Attributes$b;->b:J

    .line 182
    return-void
.end method
