.class public final Lkmw$a;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
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

.field h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string/jumbo v0, ""

    iput-object v0, p0, Lkmw$a;->b:Ljava/lang/String;

    .line 970
    const-string/jumbo v0, ""

    iput-object v0, p0, Lkmw$a;->c:Ljava/lang/String;

    .line 972
    const/4 v0, -0x1

    iput v0, p0, Lkmw$a;->e:I

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    .line 978
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    return-void
.end method

.method static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1583
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lkmw;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "percentDecoded":Ljava/lang/String;
    invoke-static {v0}, Lknj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private b(Ljava/lang/String;II)V
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1440
    if-ne p2, p3, :cond_1

    .line 1463
    :cond_0
    return-void

    .line 1444
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1445
    .local v9, "c":C
    const/16 v0, 0x2f

    if-eq v9, v0, :cond_2

    const/16 v0, 0x5c

    if-ne v9, v0, :cond_7

    .line 1447
    :cond_2
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1448
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 p2, p2, 0x1

    .line 1456
    :goto_0
    move v1, p2

    .local v1, "i":I
    :cond_3
    :goto_1
    if-ge v1, p3, :cond_0

    .line 1457
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v1, p3, v0}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1458
    .local v2, "pathSegmentDelimiterOffset":I
    if-ge v2, p3, :cond_8

    move v10, v4

    .line 3468
    .local v10, "segmentHasTrailingSlash":Z
    :goto_2
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v8, 0x0

    move-object v0, p1

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v8}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 3488
    const-string/jumbo v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "%2e"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v4

    .line 3470
    :goto_3
    if-nez v0, :cond_6

    .line 3492
    const-string/jumbo v0, ".."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "%2e."

    .line 3493
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ".%2e"

    .line 3494
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "%2e%2e"

    .line 3495
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    move v0, v4

    .line 3473
    :goto_4
    if-eqz v0, :cond_c

    .line 3509
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    iget-object v3, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3512
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3513
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    iget-object v3, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string/jumbo v6, ""

    invoke-interface {v0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1460
    :cond_6
    :goto_5
    move v1, v2

    .line 1461
    if-eqz v10, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1452
    .end local v1    # "i":I
    .end local v2    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_7
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    iget-object v3, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string/jumbo v6, ""

    invoke-interface {v0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "pathSegmentDelimiterOffset":I
    :cond_8
    move v10, v5

    .line 1458
    goto/16 :goto_2

    .restart local v10    # "segmentHasTrailingSlash":Z
    :cond_9
    move v0, v5

    .line 3488
    goto :goto_3

    :cond_a
    move v0, v5

    .line 3495
    goto :goto_4

    .line 3515
    :cond_b
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3477
    :cond_c
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    iget-object v6, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3478
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    iget-object v6, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3482
    :goto_6
    if-eqz v10, :cond_6

    .line 3483
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3480
    :cond_d
    iget-object v0, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private static c(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1551
    const/4 v1, 0x0

    .line 1552
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1553
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1554
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1556
    add-int/lit8 p1, p1, 0x1

    .line 1560
    goto :goto_0

    .line 1561
    .end local v0    # "c":C
    :cond_1
    return v1
.end method

.method private static d(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1566
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1567
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1566
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1570
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1577
    .end local v0    # "i":I
    :sswitch_1
    return v0

    .line 1567
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static e(Ljava/lang/String;II)I
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v11, -0x1

    .line 1590
    :try_start_0
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 1591
    .local v10, "portString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1592
    .local v9, "i":I
    if-lez v9, :cond_0

    const v0, 0xffff

    if-gt v9, v0, :cond_0

    .line 1595
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :goto_0
    return v9

    .restart local v9    # "i":I
    .restart local v10    # "portString":Ljava/lang/String;
    :cond_0
    move v9, v11

    .line 1593
    goto :goto_0

    .line 1595
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move v9, v11

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1039
    iget v0, p0, Lkmw$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lkmw$a;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkmw$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lkmw;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lkmw$a;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1140
    if-eqz p1, :cond_0

    .line 1141
    const-string/jumbo v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1142
    invoke-static/range {v0 .. v5}, Lkmw;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Lkmw;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1143
    :goto_0
    iput-object v0, p0, Lkmw$a;->g:Ljava/util/List;

    .line 1144
    return-object p0

    .line 1143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lkmw;Ljava/lang/String;)Lkmw$a;
    .locals 29
    .param p1, "base"    # Lkmw;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 1306
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lknj;->a(Ljava/lang/String;II)I

    move-result v5

    .line 1307
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3}, Lknj;->b(Ljava/lang/String;II)I

    move-result v24

    .line 2524
    .local v24, "limit":I
    sub-int v3, v24, v5

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    .line 2526
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2527
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v27, -0x1

    .line 1311
    .local v27, "schemeDelimiterOffset":I
    :cond_2
    :goto_0
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_c

    .line 1312
    const/4 v4, 0x1

    const-string/jumbo v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1313
    const-string/jumbo v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->a:Ljava/lang/String;

    .line 1314
    add-int/lit8 v5, v5, 0x6

    .line 1330
    :goto_1
    const/16 v23, 0x0

    .line 1331
    .local v23, "hasUsername":Z
    const/16 v22, 0x0

    .line 1332
    .local v22, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lkmw$a;->c(Ljava/lang/String;II)I

    move-result v28

    .line 1333
    .local v28, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ge v0, v3, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lkmw;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkmw$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1343
    :cond_3
    add-int v5, v5, v28

    .line 1346
    :goto_2
    const-string/jumbo v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v21

    .line 1347
    .local v21, "componentDelimiterOffset":I
    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    .line 1348
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 1350
    .local v19, "c":I
    :goto_3
    sparse-switch v19, :sswitch_data_0

    goto :goto_2

    .line 1383
    :sswitch_0
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lkmw$a;->d(Ljava/lang/String;II)I

    move-result v26

    .line 1384
    .local v26, "portColonOffset":I
    add-int/lit8 v3, v26, 0x1

    move/from16 v0, v21

    if-ge v3, v0, :cond_12

    .line 1385
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Lkmw$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->d:Ljava/lang/String;

    .line 1386
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v3, v1}, Lkmw$a;->e(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lkmw$a;->e:I

    .line 1387
    move-object/from16 v0, p0

    iget v3, v0, Lkmw$a;->e:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    .line 1388
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid URL port: \""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v26, 0x1

    .line 1389
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x22

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2529
    .end local v19    # "c":I
    .end local v21    # "componentDelimiterOffset":I
    .end local v22    # "hasPassword":Z
    .end local v23    # "hasUsername":Z
    .end local v26    # "portColonOffset":I
    .end local v27    # "schemeDelimiterOffset":I
    .end local v28    # "slashCount":I
    :cond_4
    add-int/lit8 v27, v5, 0x1

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 2530
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2532
    const/16 v4, 0x61

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7a

    if-le v3, v4, :cond_8

    :cond_5
    const/16 v4, 0x41

    if-lt v3, v4, :cond_6

    const/16 v4, 0x5a

    if-le v3, v4, :cond_8

    :cond_6
    const/16 v4, 0x30

    if-lt v3, v4, :cond_7

    const/16 v4, 0x39

    if-le v3, v4, :cond_8

    :cond_7
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_8

    .line 2539
    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    .line 2542
    const/16 v27, -0x1

    goto/16 :goto_0

    .line 2529
    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 2546
    :cond_9
    const/16 v27, -0x1

    goto/16 :goto_0

    .line 1315
    .restart local v27    # "schemeDelimiterOffset":I
    :cond_a
    const/4 v4, 0x1

    const-string/jumbo v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1316
    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->a:Ljava/lang/String;

    .line 1317
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_1

    .line 1319
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 1320
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1322
    :cond_c
    if-eqz p1, :cond_d

    .line 1323
    move-object/from16 v0, p1

    iget-object v3, v0, Lkmw;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 1325
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1349
    .restart local v21    # "componentDelimiterOffset":I
    .restart local v22    # "hasPassword":Z
    .restart local v23    # "hasUsername":Z
    .restart local v28    # "slashCount":I
    :cond_e
    const/16 v19, -0x1

    goto/16 :goto_3

    .line 1353
    .restart local v19    # "c":I
    :sswitch_1
    if-nez v22, :cond_11

    .line 1354
    const/16 v3, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1, v3}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v6

    .line 1356
    .local v6, "passwordColonOffset":I
    const-string/jumbo v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v12}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v20

    .line 1359
    .local v20, "canonicalUsername":Ljava/lang/String;
    if-eqz v23, :cond_f

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lkmw$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1361
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lkmw$a;->b:Ljava/lang/String;

    .line 1362
    move/from16 v0, v21

    if-eq v6, v0, :cond_10

    .line 1363
    const/16 v22, 0x1

    .line 1364
    add-int/lit8 v8, v6, 0x1

    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    move/from16 v9, v21

    invoke-static/range {v7 .. v15}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->c:Ljava/lang/String;

    .line 1368
    :cond_10
    const/16 v23, 0x1

    .line 1374
    .end local v6    # "passwordColonOffset":I
    :goto_5
    add-int/lit8 v5, v21, 0x1

    .line 1375
    goto/16 :goto_2

    .line 1370
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lkmw$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v21

    invoke-static/range {v7 .. v15}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->c:Ljava/lang/String;

    goto :goto_5

    .line 1392
    .restart local v26    # "portColonOffset":I
    :cond_12
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Lkmw$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->d:Ljava/lang/String;

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lkmw$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lkmw;->a(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lkmw$a;->e:I

    .line 1395
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lkmw$a;->d:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 1396
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid URL host: \""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x22

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1399
    :cond_14
    move/from16 v5, v21

    .line 1417
    .end local v19    # "c":I
    .end local v21    # "componentDelimiterOffset":I
    .end local v26    # "portColonOffset":I
    :cond_15
    :goto_6
    const-string/jumbo v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lknj;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v25

    .line 1418
    .local v25, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v5, v2}, Lkmw$a;->b(Ljava/lang/String;II)V

    .line 1422
    move/from16 v5, v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_16

    .line 1423
    const/16 v3, 0x23

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v9

    .line 1424
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string/jumbo v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v15}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkmw;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->g:Ljava/util/List;

    .line 1426
    move v5, v9

    .line 1430
    .end local v9    # "queryDelimiterOffset":I
    :cond_16
    move/from16 v0, v24

    if-ge v5, v0, :cond_17

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_17

    .line 1431
    add-int/lit8 v11, v5, 0x1

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v24

    invoke-static/range {v10 .. v18}, Lkmw;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->h:Ljava/lang/String;

    .line 1435
    :cond_17
    return-object p0

    .line 1405
    .end local v25    # "pathDelimiterOffset":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lkmw;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->b:Ljava/lang/String;

    .line 1406
    invoke-virtual/range {p1 .. p1}, Lkmw;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->c:Ljava/lang/String;

    .line 1407
    move-object/from16 v0, p1

    iget-object v3, v0, Lkmw;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lkmw$a;->d:Ljava/lang/String;

    .line 1408
    move-object/from16 v0, p1

    iget v3, v0, Lkmw;->c:I

    move-object/from16 v0, p0

    iput v3, v0, Lkmw$a;->e:I

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lkmw$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lkmw$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkmw;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1411
    move/from16 v0, v24

    if-eq v5, v0, :cond_19

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_15

    .line 1412
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lkmw;->g()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lkmw$a;->a(Ljava/lang/String;)Lkmw$a;

    goto/16 :goto_6

    .line 1350
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Lkmw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1254
    iget-object v0, p0, Lkmw$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_0
    iget-object v0, p0, Lkmw$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_1
    new-instance v0, Lkmw;

    invoke-direct {v0, p0}, Lkmw;-><init>(Lkmw$a;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v4, 0x3a

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lkmw$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    iget-object v2, p0, Lkmw$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkmw$a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1265
    :cond_0
    iget-object v2, p0, Lkmw$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    iget-object v2, p0, Lkmw$a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1268
    iget-object v2, p0, Lkmw$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1273
    :cond_2
    iget-object v2, p0, Lkmw$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1275
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v2, p0, Lkmw$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1282
    :goto_0
    invoke-virtual {p0}, Lkmw$a;->a()I

    move-result v0

    .line 1283
    .local v0, "effectivePort":I
    iget-object v2, p0, Lkmw$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lkmw;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 1284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1288
    :cond_3
    iget-object v2, p0, Lkmw$a;->f:Ljava/util/List;

    invoke-static {v1, v2}, Lkmw;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1290
    iget-object v2, p0, Lkmw$a;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1291
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    iget-object v2, p0, Lkmw$a;->g:Ljava/util/List;

    invoke-static {v1, v2}, Lkmw;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1295
    :cond_4
    iget-object v2, p0, Lkmw$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1296
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v2, p0, Lkmw$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1279
    .end local v0    # "effectivePort":I
    :cond_6
    iget-object v2, p0, Lkmw$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
