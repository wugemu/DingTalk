.class public final Layh;
.super Landroid/widget/BaseAdapter;
.source "DingOverdueTaskAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/ListView;

.field private d:I

.field private e:Lbiz;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;IJ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "chooseMode"    # I
    .param p4, "seed"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layh;->a:Ljava/util/List;

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Layh;->d:I

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Layh;->f:Ljava/util/Set;

    .line 42
    iput-object p1, p0, Layh;->b:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Layh;->c:Landroid/widget/ListView;

    .line 44
    iput p3, p0, Layh;->d:I

    .line 45
    iput-wide p4, p0, Layh;->g:J

    .line 46
    return-void
.end method


# virtual methods
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
    .line 57
    .local p3, "choosedDingIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput p1, p0, Layh;->d:I

    .line 58
    iput-object p2, p0, Layh;->e:Lbiz;

    .line 59
    iput-object p3, p0, Layh;->f:Ljava/util/Set;

    .line 60
    invoke-virtual {p0}, Layh;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Layh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    if-ltz p1, :cond_0

    iget-object v0, p0, Layh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Layh;->a:Ljava/util/List;

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
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Lbig;

    iget-object v2, p0, Layh;->b:Landroid/app/Activity;

    sget v3, Laxp$g;->ding_list_item_normal_v2:I

    invoke-direct {v0, v2, v3}, Lbig;-><init>(Landroid/app/Activity;I)V

    .line 89
    .local v0, "holder":Lbig;
    iget-object v2, p0, Layh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Lbig;->a(Landroid/widget/ListView;)Landroid/view/View;

    move-result-object p2

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    invoke-virtual {p0, p1}, Layh;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 96
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {v0, v5}, Lbig;->a(Z)V

    .line 97
    iget-wide v2, p0, Layh;->g:J

    invoke-virtual {v0, v2, v3}, Lbig;->a(J)V

    .line 98
    iget v2, p0, Layh;->d:I

    iget-object v3, p0, Layh;->e:Lbiz;

    iget-object v4, p0, Layh;->f:Ljava/util/Set;

    invoke-virtual {v0, v2, v3, v4}, Lbig;->a(ILbiz;Ljava/util/Set;)V

    .line 99
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Lbig;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V

    .line 100
    return-object p2

    .line 92
    .end local v0    # "holder":Lbig;
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbig;

    .restart local v0    # "holder":Lbig;
    goto :goto_0
.end method
