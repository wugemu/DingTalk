.class public final Lfum;
.super Lgl;
.source "CyclePagerAdapter.java"


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lgl;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfum;->c:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lfum;->d:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lgl;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfum;->c:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lfum;->d:I

    .line 1026
    iget-object v0, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1027
    if-eqz p1, :cond_0

    .line 1030
    iget-object v0, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    instance-of v6, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 46
    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 48
    .local v5, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lfum;->a()I

    move-result v3

    .line 50
    .local v3, "realCount":I
    rem-int v1, p2, v3

    .line 51
    .local v1, "desRealPosition":I
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    rem-int v0, v6, v3

    .line 52
    .local v0, "currentRealPosition":I
    iget v6, p0, Lfum;->d:I

    rem-int v2, v6, v3

    .line 55
    .local v2, "lastInsRealPos":I
    if-eq v1, v0, :cond_0

    if-ne v1, v2, :cond_1

    .line 68
    .end local v0    # "currentRealPosition":I
    .end local v1    # "desRealPosition":I
    .end local v2    # "lastInsRealPos":I
    .end local v3    # "realCount":I
    .end local v5    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "currentRealPosition":I
    .restart local v1    # "desRealPosition":I
    .restart local v2    # "lastInsRealPos":I
    .restart local v3    # "realCount":I
    .restart local v5    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_1
    if-ltz v1, :cond_0

    iget-object v6, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 61
    iget-object v6, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 62
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lfum;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 110
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    iput p2, p0, Lfum;->d:I

    .line 86
    invoke-virtual {p0}, Lfum;->a()I

    move-result v2

    rem-int v0, p2, v2

    .line 87
    .local v0, "realPosition":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 88
    iget-object v2, p0, Lfum;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 115
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 122
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 123
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    sget v0, Lezg$h;->name_card_item:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfum;->b:Landroid/view/View;

    .line 125
    :cond_0
    return-void
.end method
