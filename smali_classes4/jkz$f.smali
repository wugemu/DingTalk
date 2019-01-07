.class final Ljkz$f;
.super Ljava/lang/Object;
.source "ChocolateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:B

.field public c:B

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    const v0, 0x19861103

    iput v0, p0, Ljkz$f;->a:I

    .line 1704
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljkz$f;->f:J

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljkz$f;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "cossObjectIndex"    # Ljkz$f;

    .prologue
    .line 1707
    if-nez p0, :cond_0

    .line 1715
    :goto_0
    return-void

    .line 1709
    :cond_0
    iget v0, p1, Ljkz$f;->a:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1710
    iget-byte v0, p1, Ljkz$f;->b:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1711
    iget-byte v0, p1, Ljkz$f;->c:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1712
    iget v0, p1, Ljkz$f;->d:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1713
    iget v0, p1, Ljkz$f;->e:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1714
    iget-wide v0, p1, Ljkz$f;->f:J

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
