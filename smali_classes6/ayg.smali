.class public final Layg;
.super Landroid/widget/BaseAdapter;
.source "DingNotifyCenterUnReadAdapter.java"


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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layg;->a:Ljava/util/List;

    .line 29
    iput-object p1, p0, Layg;->b:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method private a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    if-ltz p1, :cond_0

    iget-object v0, p0, Layg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Layg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Layg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Layg;->a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lbiw;

    iget-object v2, p0, Layg;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lbiw;-><init>(Landroid/app/Activity;)V

    .line 55
    .local v0, "holder":Lbiw;
    invoke-virtual {v0}, Lbiw;->b()Landroid/view/View;

    move-result-object p2

    .line 60
    :goto_0
    invoke-direct {p0, p1}, Layg;->a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 61
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {p0}, Layg;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lbiw;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 63
    return-object p2

    .line 57
    .end local v0    # "holder":Lbiw;
    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .restart local v0    # "holder":Lbiw;
    goto :goto_0

    .line 61
    .restart local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
