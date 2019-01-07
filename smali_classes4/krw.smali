.class public final Lkrw;
.super Ljava/lang/Object;
.source "DateTimeParser.java"

# interfaces
.implements Lkrx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkrw$a;,
        Lkrw$b;
    }
.end annotation


# static fields
.field private static i:[I

.field private static j:[I


# instance fields
.field public a:Lkry;

.field b:Lkrz;

.field public c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field public d:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field public e:I

.field public f:I

.field public final g:[I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private l:[I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 2427
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkrw;->i:[I

    .line 2430
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkrw;->j:[I

    .line 425
    return-void

    .line 2427
    .line 2430
    :array_0
    .array-data 4
        0x2
        0x7f0
        0x7f0
        0x7ff800
        0x800000
        -0x1000000
        -0x2000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-array v1, v4, [I

    iput-object v1, p0, Lkrw;->g:[I

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkrw;->k:Ljava/util/List;

    .line 542
    iput v3, p0, Lkrw;->m:I

    .line 463
    new-instance v1, Lkrz;

    invoke-direct {v1, p1, v2, v2}, Lkrz;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lkrw;->b:Lkrz;

    .line 464
    new-instance v1, Lkry;

    iget-object v2, p0, Lkrw;->b:Lkrz;

    invoke-direct {v1, v2}, Lkry;-><init>(Lkrz;)V

    iput-object v1, p0, Lkrw;->a:Lkry;

    .line 465
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 466
    iput v3, p0, Lkrw;->e:I

    .line 467
    const/4 v1, 0x0

    iput v1, p0, Lkrw;->f:I

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lkrw;->g:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public static a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
    .locals 2
    .param p0, "token"    # Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 534
    iget-object v0, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lkrw;->d:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lkrw;->a:Lkry;

    invoke-virtual {v1}, Lkry;->a()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lkrw;->e:I

    .line 537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkrw;->d:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lkrw;->e:I

    goto :goto_0
.end method

.method public a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 9
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v8, 0x31

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 501
    iget-object v0, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v2, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 503
    :goto_0
    iput v5, p0, Lkrw;->e:I

    .line 504
    iget-object v2, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-ne v2, p1, :cond_1

    .line 505
    iget v1, p0, Lkrw;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkrw;->f:I

    .line 506
    iget-object v1, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    return-object v1

    .line 502
    :cond_0
    iget-object v2, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v3, p0, Lkrw;->a:Lkry;

    invoke-virtual {v3}, Lkry;->a()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v3, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0

    .line 508
    :cond_1
    iput-object v0, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 509
    iput p1, p0, Lkrw;->m:I

    .line 1546
    iget-object v2, p0, Lkrw;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1547
    new-array v4, v8, [Z

    .line 1548
    iget v2, p0, Lkrw;->m:I

    if-ltz v2, :cond_2

    .line 1549
    iget v2, p0, Lkrw;->m:I

    aput-boolean v7, v4, v2

    .line 1550
    iput v5, p0, Lkrw;->m:I

    :cond_2
    move v3, v1

    .line 1552
    :goto_1
    const/4 v2, 0x7

    if-ge v3, v2, :cond_6

    .line 1553
    iget-object v2, p0, Lkrw;->g:[I

    aget v2, v2, v3

    iget v5, p0, Lkrw;->f:I

    if-ne v2, v5, :cond_5

    move v2, v1

    .line 1554
    :goto_2
    const/16 v5, 0x20

    if-ge v2, v5, :cond_5

    .line 1555
    sget-object v5, Lkrw;->i:[I

    aget v5, v5, v3

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 1556
    aput-boolean v7, v4, v2

    .line 1558
    :cond_3
    sget-object v5, Lkrw;->j:[I

    aget v5, v5, v3

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 1559
    add-int/lit8 v5, v2, 0x20

    aput-boolean v7, v4, v5

    .line 1554
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1552
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_6
    move v2, v1

    .line 1564
    :goto_3
    if-ge v2, v8, :cond_8

    .line 1565
    aget-boolean v3, v4, v2

    if-eqz v3, :cond_7

    .line 1566
    new-array v3, v7, [I

    iput-object v3, p0, Lkrw;->l:[I

    .line 1567
    iget-object v3, p0, Lkrw;->l:[I

    aput v2, v3, v1

    .line 1568
    iget-object v3, p0, Lkrw;->k:Ljava/util/List;

    iget-object v5, p0, Lkrw;->l:[I

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1571
    :cond_8
    iget-object v2, p0, Lkrw;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [[I

    move v2, v1

    .line 1572
    :goto_4
    iget-object v1, p0, Lkrw;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1573
    iget-object v1, p0, Lkrw;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v3, v2

    .line 1572
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1575
    :cond_9
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v2, p0, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v4, Lkrw;->h:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V

    .line 510
    throw v1
.end method
