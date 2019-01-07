.class public Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
.super Ljava/lang/Object;
.source "PoiSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBound"
.end annotation


# static fields
.field public static final BOUND_SHAPE:Ljava/lang/String; = "Bound"

.field public static final ELLIPSE_SHAPE:Ljava/lang/String; = "Ellipse"

.field public static final POLYGON_SHAPE:Ljava/lang/String; = "Polygon"

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "Rectangle"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;I)V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 520
    const-string/jumbo v0, "Bound"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 521
    iput p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 522
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 524
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;IZ)V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 538
    const-string/jumbo v0, "Bound"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 539
    iput p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 540
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 542
    iput-boolean p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 543
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 557
    const-string/jumbo v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 559
    return-void
.end method

.method private constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "I",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 573
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 574
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 575
    iput p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 576
    iput-object p4, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 577
    iput-object p5, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 578
    iput-object p6, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    .line 579
    iput-boolean p7, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 580
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 568
    const-string/jumbo v0, "Polygon"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 569
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    .line 570
    return-void
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 583
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 584
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 586
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid rect "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 592
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 593
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 737
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    iget-object v4, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v5, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    iget-boolean v7, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    const-string/jumbo v1, "PoiSearch"

    const-string/jumbo v2, "SearchBoundClone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 692
    if-ne p0, p1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 695
    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 697
    goto :goto_0

    .line 698
    :cond_3
    check-cast p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    .line 699
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_4

    .line 700
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_5

    move v0, v1

    .line 701
    goto :goto_0

    .line 702
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 703
    goto :goto_0

    .line 704
    :cond_5
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 705
    goto :goto_0

    .line 706
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_7

    .line 707
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_8

    move v0, v1

    .line 708
    goto :goto_0

    .line 709
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 710
    goto :goto_0

    .line 711
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_9

    .line 712
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_a

    move v0, v1

    .line 713
    goto :goto_0

    .line 714
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 715
    goto :goto_0

    .line 716
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-nez v2, :cond_b

    .line 717
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-eqz v2, :cond_c

    move v0, v1

    .line 718
    goto :goto_0

    .line 719
    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 720
    goto/16 :goto_0

    .line 721
    :cond_c
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 722
    goto/16 :goto_0

    .line 723
    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 724
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 725
    goto/16 :goto_0

    .line 726
    :cond_e
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 727
    goto/16 :goto_0
.end method

.method public getCenter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getPolyGonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperRight()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 674
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 675
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 676
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 677
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 678
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    add-int/2addr v0, v2

    .line 679
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 680
    return v0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_0

    .line 674
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_2

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_3

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_4

    .line 679
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public isDistanceSort()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    return v0
.end method
