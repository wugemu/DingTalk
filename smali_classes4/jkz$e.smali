.class final Ljkz$e;
.super Ljava/lang/Object;
.source "ChocolateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:B

.field public c:I

.field public d:S

.field public e:S

.field public f:I

.field public g:B

.field public h:B

.field public i:S

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(BISLjava/lang/String;I)V
    .locals 1
    .param p1, "pharse"    # B
    .param p2, "dataLen"    # I
    .param p3, "desLen"    # S
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "category"    # I

    .prologue
    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    const v0, 0x20120718

    iput v0, p0, Ljkz$e;->a:I

    .line 1624
    iput-object p4, p0, Ljkz$e;->k:Ljava/lang/String;

    .line 1625
    iget-object v0, p0, Ljkz$e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Ljkz$e;->e:S

    .line 1627
    :cond_0
    iput-byte p1, p0, Ljkz$e;->b:B

    .line 1628
    iput p2, p0, Ljkz$e;->c:I

    .line 1629
    iput-short p3, p0, Ljkz$e;->d:S

    .line 1630
    iput p5, p0, Ljkz$e;->f:I

    .line 1631
    return-void
.end method

.method public static a(Ljkz$e;I)Ljkz$d;
    .locals 3
    .param p0, "cossObjectHeader"    # Ljkz$e;
    .param p1, "pos"    # I

    .prologue
    .line 1634
    if-nez p0, :cond_0

    .line 1635
    const/4 v0, 0x0

    .line 1643
    :goto_0
    return-object v0

    .line 1636
    :cond_0
    new-instance v0, Ljkz$d;

    invoke-direct {v0}, Ljkz$d;-><init>()V

    .line 1637
    .local v0, "co":Ljkz$d;
    iget v1, p0, Ljkz$e;->c:I

    iget-short v2, p0, Ljkz$e;->d:S

    add-int/2addr v1, v2

    iput v1, v0, Ljkz$d;->e:I

    .line 1638
    iget-byte v1, p0, Ljkz$e;->b:B

    iput-byte v1, v0, Ljkz$d;->b:B

    .line 1639
    iget-object v1, p0, Ljkz$e;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Ljkz$d;->d:I

    .line 1640
    iget-byte v1, p0, Ljkz$e;->g:B

    iput-byte v1, v0, Ljkz$d;->c:B

    .line 1641
    iput p1, v0, Ljkz$d;->a:I

    .line 1642
    iget v1, p0, Ljkz$e;->f:I

    iput v1, v0, Ljkz$d;->f:I

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljkz$e;
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x0

    .line 1669
    if-nez p0, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return-object v4

    .line 1671
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x20120718

    if-ne v1, v2, :cond_0

    .line 1673
    new-instance v0, Ljkz$e;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljkz$e;-><init>(BISLjava/lang/String;I)V

    .line 1674
    .local v0, "cossObjHeader":Ljkz$e;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Ljkz$e;->e:S

    .line 1675
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Ljkz$e;->g:B

    .line 1676
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Ljkz$e;->h:B

    .line 1677
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Ljkz$e;->i:S

    .line 1678
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Ljkz$e;->j:I

    move-object v4, v0

    .line 1679
    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;ILjkz$e;)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "byteNum"    # I
    .param p2, "cossObjectHeader"    # Ljkz$e;

    .prologue
    .line 1683
    if-nez p2, :cond_0

    .line 1686
    :goto_0
    return-void

    .line 1685
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p2, Ljkz$e;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljkz$e;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "cossObjectHeader"    # Ljkz$e;

    .prologue
    .line 1647
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    iget v0, p1, Ljkz$e;->a:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1650
    iget-byte v0, p1, Ljkz$e;->b:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1651
    iget v0, p1, Ljkz$e;->c:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1652
    iget-short v0, p1, Ljkz$e;->d:S

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1653
    iget v0, p1, Ljkz$e;->f:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1654
    iget-short v0, p1, Ljkz$e;->e:S

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1655
    iget-byte v0, p1, Ljkz$e;->g:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1656
    iget-byte v0, p1, Ljkz$e;->h:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1657
    iget-short v0, p1, Ljkz$e;->i:S

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1658
    iget v0, p1, Ljkz$e;->j:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static b(Ljava/nio/ByteBuffer;Ljkz$e;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "cossObjectHeader"    # Ljkz$e;

    .prologue
    .line 1663
    if-nez p0, :cond_0

    .line 1666
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget-object v0, p1, Ljkz$e;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
