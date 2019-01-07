.class final Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field private final f:Landroid/database/DataSetObservable;

.field private final g:Landroid/widget/ListAdapter;

.field private h:I

.field private final i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "headerViewInfos"    # Ljava/util/ArrayList;
    .param p2, "footViewInfos"    # Ljava/util/ArrayList;
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->f:Landroid/database/DataSetObservable;

    .line 487
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    .line 488
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->d:I

    .line 491
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->j:Z

    .line 493
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->k:Z

    .line 496
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    .line 497
    instance-of v2, p3, Landroid/widget/Filterable;

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->i:Z

    .line 498
    if-nez p1, :cond_0

    .line 499
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    .line 504
    :goto_0
    if-nez p2, :cond_1

    .line 505
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    .line 510
    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->e:Z

    .line 511
    return-void

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 507
    :cond_1
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 510
    goto :goto_2
.end method

.method private a()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 600
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 2
    .param p0, "infos"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 547
    if-eqz p0, :cond_0

    .line 548
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 514
    if-gtz p1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    if-eq v0, p1, :cond_0

    .line 518
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    .line 1842
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->f:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3528
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 588
    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    :goto_0
    return v0

    .line 3532
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4528
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->i:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 631
    .line 6528
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 631
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int v3, v5, v6

    .line 632
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 633
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 634
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 658
    :cond_0
    :goto_0
    return-object v4

    .line 640
    :cond_1
    sub-int v1, p1, v3

    .line 641
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 642
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a()I

    move-result v0

    .line 644
    if-ge v1, v0, :cond_2

    .line 645
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 646
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 654
    :cond_2
    sub-int v2, v1, v0

    .line 655
    .local v2, "footerPosition":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, v2, v5

    if-nez v5, :cond_0

    .line 656
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 664
    .line 7528
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 664
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int v2, v3, v4

    .line 665
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 666
    sub-int v1, p1, v2

    .line 667
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 668
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 669
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 672
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 745
    .line 9528
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 745
    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int v4, v6, v7

    .line 746
    .local v4, "numHeadersAndPlaceholders":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-nez v6, :cond_3

    const/4 v1, 0x0

    .line 747
    .local v1, "adapterViewTypeStart":I
    :goto_0
    const/4 v5, -0x2

    .line 748
    .local v5, "type":I
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->j:Z

    if-eqz v6, :cond_0

    .line 750
    if-ge p1, v4, :cond_0

    .line 756
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v6, p1, v6

    if-eqz v6, :cond_0

    .line 757
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, p1, v6

    add-int/lit8 v6, v6, 0x1

    add-int v5, v1, v6

    .line 763
    :cond_0
    sub-int v2, p1, v4

    .line 764
    .local v2, "adjPosition":I
    const/4 v0, 0x0

    .line 765
    .local v0, "adapterCount":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_1

    .line 766
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a()I

    move-result v0

    .line 767
    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 768
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 769
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 778
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->j:Z

    if-eqz v6, :cond_2

    .line 780
    sub-int v3, v2, v0

    .line 781
    .local v3, "footerPosition":I
    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v6, v3, v6

    if-eqz v6, :cond_2

    .line 782
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v7, v3, v7

    add-int/lit8 v7, v7, 0x1

    add-int v5, v6, v7

    .line 785
    .end local v3    # "footerPosition":I
    :cond_2
    sget-boolean v6, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->a:Z

    .line 788
    return v5

    .line 746
    .end local v0    # "adapterCount":I
    .end local v1    # "adapterViewTypeStart":I
    .end local v2    # "adjPosition":I
    .end local v5    # "type":I
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    .line 771
    .restart local v0    # "adapterCount":I
    .restart local v1    # "adapterViewTypeStart":I
    .restart local v2    # "adjPosition":I
    .restart local v5    # "type":I
    :cond_4
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->j:Z

    if-eqz v6, :cond_1

    .line 772
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v5, v6, 0x1

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 682
    sget-boolean v5, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->a:Z

    .line 8528
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 686
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int v3, v5, v6

    .line 687
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_3

    .line 688
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, p1, v6

    .line 689
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, p1, v5

    if-nez v5, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-object v4

    .line 693
    :cond_1
    if-nez p2, :cond_2

    .line 694
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 698
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 700
    goto :goto_0

    .line 704
    :cond_3
    sub-int v1, p1, v3

    .line 705
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 706
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_6

    .line 707
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a()I

    move-result v0

    .line 708
    if-ge v1, v0, :cond_6

    .line 709
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 710
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 712
    :cond_4
    if-nez p2, :cond_5

    .line 713
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 715
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->d:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 717
    goto :goto_0

    .line 722
    :cond_6
    sub-int v2, v1, v0

    .line 723
    .local v2, "footerPosition":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 724
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, v2, v6

    .line 725
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 726
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_0

    .line 729
    if-nez p2, :cond_7

    .line 730
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 734
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_7
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 736
    goto :goto_0

    .line 739
    :cond_8
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public final getViewTypeCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 798
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 799
    .local v0, "count":I
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->j:Z

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 804
    .local v1, "offset":I
    add-int/2addr v0, v1

    .line 806
    .end local v1    # "offset":I
    :cond_0
    sget-boolean v2, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->a:Z

    .line 809
    return v0

    .line 798
    .end local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 606
    .line 5528
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 606
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    mul-int v3, v5, v6

    .line 607
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 608
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->b:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, p1, v6

    .line 609
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 625
    :cond_0
    :goto_0
    return v4

    .line 613
    :cond_1
    sub-int v1, p1, v3

    .line 614
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 615
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    .line 616
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a()I

    move-result v0

    .line 617
    if-ge v1, v0, :cond_2

    .line 618
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 623
    :cond_2
    sub-int v2, v1, v0

    .line 624
    .local v2, "footerPosition":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    rem-int v5, v2, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->c:Ljava/util/ArrayList;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->h:I

    div-int v6, v2, v6

    .line 625
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->f:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 818
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->f:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->g:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 826
    :cond_0
    return-void
.end method
