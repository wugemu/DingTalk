.class public final Layp;
.super Landroid/widget/BaseAdapter;
.source "DingNotifyCenterCommentRemindAdapterV2.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbgi;",
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
            "Lbgi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "unreadObjs":Ljava/util/List;, "Ljava/util/List<Lbgi;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->a:Ljava/util/List;

    .line 27
    iput-object p1, p0, Layp;->b:Landroid/app/Activity;

    .line 28
    if-eqz p2, :cond_0

    .line 29
    iput-object p2, p0, Layp;->a:Ljava/util/List;

    .line 31
    :cond_0
    return-void
.end method

.method private a(I)Lbgi;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    if-ltz p1, :cond_0

    iget-object v0, p0, Layp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Layp;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgi;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Layp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Layp;->a(I)Lbgi;

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
    .line 49
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
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lbix;

    iget-object v2, p0, Layp;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lbix;-><init>(Landroid/app/Activity;)V

    .line 57
    .local v0, "holder":Lbix;
    invoke-virtual {v0}, Lbix;->b()Landroid/view/View;

    move-result-object p2

    .line 61
    :goto_0
    invoke-direct {p0, p1}, Layp;->a(I)Lbgi;

    move-result-object v1

    .line 62
    .local v1, "unreadObj":Lbgi;
    invoke-virtual {p0}, Layp;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lbix;->a(Lbgi;Z)V

    .line 63
    return-object p2

    .line 59
    .end local v0    # "holder":Lbix;
    .end local v1    # "unreadObj":Lbgi;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbix;

    .restart local v0    # "holder":Lbix;
    goto :goto_0

    .line 62
    .restart local v1    # "unreadObj":Lbgi;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
