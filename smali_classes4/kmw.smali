.class public final Lkmw;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkmw$a;
    }
.end annotation


# static fields
.field private static final e:[C


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lkmw;->e:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lkmw$a;)V
    .locals 4
    .param p1, "builder"    # Lkmw$a;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iget-object v0, p1, Lkmw$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lkmw;->a:Ljava/lang/String;

    .line 340
    iget-object v0, p1, Lkmw$a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lkmw;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkmw;->f:Ljava/lang/String;

    .line 341
    iget-object v0, p1, Lkmw$a;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lkmw;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkmw;->g:Ljava/lang/String;

    .line 342
    iget-object v0, p1, Lkmw$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lkmw;->b:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lkmw$a;->a()I

    move-result v0

    iput v0, p0, Lkmw;->c:I

    .line 344
    iget-object v0, p1, Lkmw$a;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lkmw;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkmw;->h:Ljava/util/List;

    .line 345
    iget-object v0, p1, Lkmw$a;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p1, Lkmw$a;->g:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkmw;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 347
    :goto_0
    iput-object v0, p0, Lkmw;->d:Ljava/util/List;

    .line 348
    iget-object v0, p1, Lkmw$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p1, Lkmw$a;->h:Ljava/lang/String;

    invoke-static {v0, v3}, Lkmw;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_0
    iput-object v1, p0, Lkmw;->i:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Lkmw$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkmw;->j:Ljava/lang/String;

    .line 352
    return-void

    :cond_1
    move-object v0, v1

    .line 347
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 510
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/16 v0, 0x50

    .line 515
    :goto_0
    return v0

    .line 512
    :cond_0
    const-string/jumbo v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const/16 v0, 0x1bb

    goto :goto_0

    .line 515
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z
    .param p8, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 1678
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_f

    .line 1679
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1680
    .local v1, "codePoint":I
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-eq v1, v4, :cond_2

    const/16 v4, 0x80

    if-lt v1, v4, :cond_0

    if-nez p7, :cond_2

    .line 1683
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/16 v4, 0x25

    if-ne v1, v4, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1684
    invoke-static {p0, v2, p2}, Lkmw;->a(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_e

    if-eqz p6, :cond_e

    .line 1687
    :cond_2
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 1688
    .local v3, "out":Lokio/Buffer;
    invoke-virtual {v3, p0, p1, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 3702
    const/4 v4, 0x0

    .line 3704
    .end local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_d

    .line 3705
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 3706
    if-eqz p4, :cond_3

    const/16 v5, 0x9

    if-eq v6, v5, :cond_4

    const/16 v5, 0xa

    if-eq v6, v5, :cond_4

    const/16 v5, 0xc

    if-eq v6, v5, :cond_4

    const/16 v5, 0xd

    if-eq v6, v5, :cond_4

    .line 3709
    :cond_3
    const/16 v5, 0x2b

    if-ne v6, v5, :cond_6

    if-eqz p6, :cond_6

    .line 3711
    if-eqz p4, :cond_5

    const-string/jumbo v5, "+"

    :goto_2
    invoke-virtual {v3, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 3704
    :cond_4
    :goto_3
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 3711
    :cond_5
    const-string/jumbo v5, "%2B"

    goto :goto_2

    .line 3712
    :cond_6
    const/16 v5, 0x20

    if-lt v6, v5, :cond_8

    const/16 v5, 0x7f

    if-eq v6, v5, :cond_8

    const/16 v5, 0x80

    if-lt v6, v5, :cond_7

    if-nez p7, :cond_8

    .line 3715
    :cond_7
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    const/16 v5, 0x25

    if-ne v6, v5, :cond_c

    if-eqz p4, :cond_8

    if-eqz p5, :cond_c

    .line 3716
    invoke-static {p0, v2, p2}, Lkmw;->a(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3718
    :cond_8
    if-nez v4, :cond_9

    .line 3719
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    .line 3722
    :cond_9
    if-eqz p8, :cond_a

    sget-object v5, Lknj;->e:Ljava/nio/charset/Charset;

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3723
    :cond_a
    invoke-virtual {v4, v6}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 3728
    :goto_4
    invoke-virtual {v4}, Lokio/Buffer;->exhausted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3729
    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 3730
    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3731
    sget-object v7, Lkmw;->e:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v3, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3732
    sget-object v7, Lkmw;->e:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    invoke-virtual {v3, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_4

    .line 3725
    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v2

    move-object/from16 v0, p8

    invoke-virtual {v4, p0, v2, v5, v0}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    goto :goto_4

    .line 3736
    :cond_c
    invoke-virtual {v3, v6}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_3

    .line 1691
    :cond_d
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    .line 1696
    .end local v1    # "codePoint":I
    .end local v3    # "out":Lokio/Buffer;
    :goto_5
    return-object v4

    .line 1678
    .restart local v1    # "codePoint":I
    .restart local v2    # "i":I
    :cond_e
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 1696
    .end local v1    # "codePoint":I
    :cond_f
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_5
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 10
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .prologue
    const/16 v9, 0x2b

    const/16 v8, 0x25

    const/4 v7, -0x1

    .line 1615
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_5

    .line 1616
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1617
    .local v0, "c":C
    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_4

    if-eqz p3, :cond_4

    .line 1619
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1620
    .local v2, "out":Lokio/Buffer;
    invoke-virtual {v2, p0, p1, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move v3, v1

    .line 3632
    :goto_1
    if-ge v3, p2, :cond_3

    .line 3633
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 3634
    if-ne v4, v8, :cond_1

    add-int/lit8 v5, v3, 0x2

    if-ge v5, p2, :cond_1

    .line 3635
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lknj;->a(C)I

    move-result v5

    .line 3636
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lknj;->a(C)I

    move-result v6

    .line 3637
    if-eq v5, v7, :cond_2

    if-eq v6, v7, :cond_2

    .line 3638
    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3639
    add-int/lit8 v3, v3, 0x2

    .line 3632
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 3642
    :cond_1
    if-ne v4, v9, :cond_2

    if-eqz p3, :cond_2

    .line 3643
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 3646
    :cond_2
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_2

    .line 1622
    :cond_3
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1627
    .end local v0    # "c":C
    .end local v2    # "out":Lokio/Buffer;
    :goto_3
    return-object v3

    .line 1615
    .restart local v0    # "c":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    .prologue
    .line 1750
    const/4 v1, 0x0

    .line 1751
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1750
    invoke-static/range {v0 .. v8}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z
    .param p6, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1743
    .line 1744
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move v5, v1

    move v7, v6

    move-object v8, p6

    .line 1743
    invoke-static/range {v0 .. v8}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    .prologue
    .line 1601
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lkmw;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1605
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1606
    .local v3, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1607
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1608
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1609
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lkmw;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1609
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1611
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 553
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v2, -0x1

    .line 1651
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1652
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1653
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lknj;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 1654
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lknj;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1651
    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 639
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 641
    const/16 v4, 0x26

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 642
    .local v0, "ampersandOffset":I
    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 644
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 645
    .local v1, "equalsOffset":I
    if-eq v1, v5, :cond_1

    if-le v1, v0, :cond_2

    .line 646
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 653
    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    .end local v0    # "ampersandOffset":I
    .end local v1    # "equalsOffset":I
    :cond_3
    return-object v3
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 621
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 623
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    if-eqz v3, :cond_1

    .line 626
    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 630
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;)Lkmw;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 916
    new-instance v0, Lkmw$a;

    invoke-direct {v0}, Lkmw$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lkmw$a;->a(Lkmw;Ljava/lang/String;)Lkmw$a;

    move-result-object v0

    invoke-virtual {v0}, Lkmw$a;->b()Lkmw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 377
    .line 1872
    new-instance v14, Lkmw$a;

    invoke-direct {v14}, Lkmw$a;-><init>()V

    .line 1873
    iget-object v0, p0, Lkmw;->a:Ljava/lang/String;

    iput-object v0, v14, Lkmw$a;->a:Ljava/lang/String;

    .line 1874
    invoke-virtual {p0}, Lkmw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lkmw$a;->b:Ljava/lang/String;

    .line 1875
    invoke-virtual {p0}, Lkmw;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lkmw$a;->c:Ljava/lang/String;

    .line 1876
    iget-object v0, p0, Lkmw;->b:Ljava/lang/String;

    iput-object v0, v14, Lkmw$a;->d:Ljava/lang/String;

    .line 1878
    iget v0, p0, Lkmw;->c:I

    iget-object v1, p0, Lkmw;->a:Ljava/lang/String;

    invoke-static {v1}, Lkmw;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lkmw;->c:I

    :goto_0
    iput v0, v14, Lkmw$a;->e:I

    .line 1879
    iget-object v0, v14, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1880
    iget-object v0, v14, Lkmw$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lkmw;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1881
    invoke-virtual {p0}, Lkmw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lkmw$a;->a(Ljava/lang/String;)Lkmw$a;

    .line 2828
    iget-object v0, p0, Lkmw;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1882
    :goto_1
    iput-object v0, v14, Lkmw$a;->h:Ljava/lang/String;

    .line 3232
    iget-object v0, v14, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_2

    .line 3233
    iget-object v0, v14, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3234
    iget-object v8, v14, Lkmw$a;->f:Ljava/util/List;

    const-string/jumbo v1, "[]"

    move v3, v2

    move v5, v2

    .line 3235
    invoke-static/range {v0 .. v5}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 3234
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3232
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 1878
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2829
    :cond_1
    iget-object v0, p0, Lkmw;->j:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2830
    iget-object v1, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3237
    :cond_2
    iget-object v0, v14, Lkmw$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3238
    iget-object v0, v14, Lkmw$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_3
    if-ge v0, v1, :cond_4

    .line 3239
    iget-object v3, v14, Lkmw$a;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3240
    if-eqz v5, :cond_3

    .line 3241
    iget-object v3, v14, Lkmw$a;->g:Ljava/util/List;

    const-string/jumbo v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 3242
    invoke-static/range {v5 .. v10}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 3241
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3246
    :cond_4
    iget-object v0, v14, Lkmw$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3247
    iget-object v0, v14, Lkmw$a;->h:Ljava/lang/String;

    const-string/jumbo v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lkmw$a;->h:Ljava/lang/String;

    .line 377
    :cond_5
    invoke-virtual {v14}, Lkmw$a;->toString()Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_4
    return-object v0

    .line 380
    :catch_0
    move-exception v11

    .line 383
    .local v11, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string/jumbo v0, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string/jumbo v1, ""

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, "stripped":Ljava/lang/String;
    invoke-static {v12}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_4

    .line 386
    .end local v12    # "stripped":Ljava/lang/String;
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lkmw;->a:Ljava/lang/String;

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 412
    iget-object v2, p0, Lkmw;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    .line 415
    :goto_0
    return-object v2

    .line 413
    :cond_0
    iget-object v2, p0, Lkmw;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x3

    .line 414
    .local v1, "usernameStart":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    iget-object v3, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, ":@"

    invoke-static {v2, v1, v3, v4}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "usernameEnd":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lkmw$a;
    .locals 1
    .param p1, "link"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 892
    :try_start_0
    new-instance v0, Lkmw$a;

    invoke-direct {v0}, Lkmw$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lkmw$a;->a(Lkmw;Ljava/lang/String;)Lkmw$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 445
    iget-object v2, p0, Lkmw;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    .line 448
    :goto_0
    return-object v2

    .line 446
    :cond_0
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Lkmw;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 447
    .local v1, "passwordStart":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 448
    .local v0, "passwordEnd":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 546
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    const/16 v3, 0x2f

    iget-object v4, p0, Lkmw;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 547
    .local v1, "pathStart":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    iget-object v3, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "?#"

    invoke-static {v2, v1, v3, v4}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 548
    .local v0, "pathEnd":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 932
    instance-of v0, p1, Lkmw;

    if-eqz v0, :cond_0

    check-cast p1, Lkmw;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lkmw;->j:Ljava/lang/String;

    iget-object v1, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v8, 0x2f

    .line 570
    iget-object v5, p0, Lkmw;->j:Ljava/lang/String;

    iget-object v6, p0, Lkmw;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 571
    .local v2, "pathStart":I
    iget-object v5, p0, Lkmw;->j:Ljava/lang/String;

    iget-object v6, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "?#"

    invoke-static {v5, v2, v6, v7}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 572
    .local v1, "pathEnd":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 574
    add-int/lit8 v0, v0, 0x1

    .line 575
    iget-object v5, p0, Lkmw;->j:Ljava/lang/String;

    invoke-static {v5, v0, v1, v8}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v4

    .line 576
    .local v4, "segmentEnd":I
    iget-object v5, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    move v0, v4

    .line 578
    goto :goto_0

    .line 579
    .end local v4    # "segmentEnd":I
    :cond_0
    return-object v3
.end method

.method public final g()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 613
    iget-object v2, p0, Lkmw;->d:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 616
    :goto_0
    return-object v2

    .line 614
    :cond_0
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 615
    .local v1, "queryStart":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    iget-object v3, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v2, v1, v3, v4}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v0

    .line 616
    .local v0, "queryEnd":I
    iget-object v2, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lkmw;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lkmw;->j:Ljava/lang/String;

    return-object v0
.end method
