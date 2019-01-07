.class public final Layr;
.super Landroid/widget/BaseAdapter;
.source "DingNotifyCenterUnReadAdapterV2.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbgk;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lbgk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "unreadObjs":Ljava/util/List;, "Ljava/util/List<Lbgk;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layr;->a:Ljava/util/List;

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Layr;->a:Ljava/util/List;

    .line 30
    :cond_0
    iput-object p1, p0, Layr;->b:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method private a(I)Lbgk;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    if-ltz p1, :cond_0

    iget-object v0, p0, Layr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Layr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgk;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Layr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Layr;->a(I)Lbgk;

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
    .line 48
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
    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Lbiy;

    iget-object v2, p0, Layr;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lbiy;-><init>(Landroid/app/Activity;)V

    .line 56
    .local v0, "holder":Lbiy;
    invoke-virtual {v0}, Lbiy;->b()Landroid/view/View;

    move-result-object p2

    .line 60
    :goto_0
    invoke-direct {p0, p1}, Layr;->a(I)Lbgk;

    move-result-object v1

    .line 61
    .local v1, "unreadObj":Lbgk;
    invoke-virtual {p0}, Layr;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lbiy;->a(Lbgk;Z)V

    .line 62
    return-object p2

    .line 58
    .end local v0    # "holder":Lbiy;
    .end local v1    # "unreadObj":Lbgk;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .restart local v0    # "holder":Lbiy;
    goto :goto_0

    .line 61
    .restart local v1    # "unreadObj":Lbgk;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
