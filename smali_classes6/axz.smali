.class public final Laxz;
.super Laxs;
.source "DingListAdapter.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/ListView;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:Lbiz;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/widget/ListView;
    .param p3, "chooseMode"    # I
    .param p4, "seed"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Laxs;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxz;->d:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxz;->e:Z

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Laxz;->f:I

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laxz;->h:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Laxz;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Laxz;->b:Landroid/widget/ListView;

    .line 40
    iput p3, p0, Laxz;->f:I

    .line 41
    iput-wide p4, p0, Laxz;->i:J

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    return-object v0
.end method

.method public final a(ILbiz;Ljava/util/Set;)V
    .locals 0
    .param p1, "chooseMode"    # I
    .param p2, "dingChooseListener"    # Lbiz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbiz;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "choosedDingIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput p1, p0, Laxz;->f:I

    .line 129
    iput-object p2, p0, Laxz;->g:Lbiz;

    .line 130
    iput-object p3, p0, Laxz;->h:Ljava/util/Set;

    .line 131
    invoke-virtual {p0}, Laxz;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public final a(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "filterType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iput p2, p0, Laxz;->c:I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_0
    invoke-virtual {p0}, Laxz;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laxz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Laxz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 71
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 72
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Self:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->getValue()I

    move-result v2

    .line 80
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :goto_0
    return v2

    .line 74
    .restart local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    invoke-static {v1}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->UnConfirmed:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->getValue()I

    move-result v2

    goto :goto_0

    .line 77
    :cond_1
    sget-object v2, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Common:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->getValue()I

    move-result v2

    goto :goto_0

    .line 80
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_2
    sget-object v2, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Unknown:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->getValue()I

    move-result v2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p0, p1}, Laxz;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 93
    .local v2, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {p0, p1}, Laxz;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->valueOf(I)Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    move-result-object v0

    .line 94
    .local v0, "dingViewHolderType":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    if-nez p2, :cond_1

    .line 95
    iget-object v3, p0, Laxz;->a:Landroid/app/Activity;

    invoke-static {v3, p0, v0}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory;->a(Landroid/app/Activity;Laxs;Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;)Lbhz;

    move-result-object v1

    .line 96
    .local v1, "holder":Lbhz;
    iget-object v3, p0, Laxz;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Lbhz;->a(Landroid/widget/ListView;)Landroid/view/View;

    move-result-object p2

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :cond_0
    :goto_0
    iget-boolean v3, p0, Laxz;->e:Z

    invoke-virtual {v1, v3}, Lbhz;->a(Z)V

    .line 111
    iget-wide v6, p0, Laxz;->i:J

    invoke-virtual {v1, v6, v7}, Lbhz;->a(J)V

    .line 112
    iget v3, p0, Laxz;->f:I

    iget-object v5, p0, Laxz;->g:Lbiz;

    iget-object v6, p0, Laxz;->h:Ljava/util/Set;

    invoke-virtual {v1, v3, v5, v6}, Lbhz;->a(ILbiz;Ljava/util/Set;)V

    .line 113
    iget v3, p0, Laxz;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lbhz;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V

    .line 114
    return-object p2

    .line 101
    .end local v1    # "holder":Lbhz;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhz;

    .line 1038
    .restart local v1    # "holder":Lbhz;
    if-eqz v1, :cond_2

    .line 1041
    sget-object v3, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    :cond_2
    move v3, v4

    .line 102
    :goto_1
    if-nez v3, :cond_0

    .line 103
    iget-object v3, p0, Laxz;->a:Landroid/app/Activity;

    invoke-static {v3, p0, v0}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory;->a(Landroid/app/Activity;Laxs;Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;)Lbhz;

    move-result-object v1

    .line 104
    iget-object v3, p0, Laxz;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Lbhz;->a(Landroid/widget/ListView;)Landroid/view/View;

    move-result-object p2

    .line 105
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1043
    :pswitch_0
    instance-of v3, v1, Lbiv;

    goto :goto_1

    .line 1045
    :pswitch_1
    instance-of v3, v1, Lbip;

    goto :goto_1

    .line 1047
    :pswitch_2
    instance-of v3, v1, Lbij;

    goto :goto_1

    .line 1049
    :pswitch_3
    instance-of v3, v1, Lbis;

    goto :goto_1

    .line 1051
    :pswitch_4
    instance-of v3, v1, Lbig;

    goto :goto_1

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->values()[Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Laxs;->notifyDataSetChanged()V

    .line 65
    return-void
.end method
