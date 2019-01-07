.class public abstract Lcvi;
.super Landroid/widget/BaseAdapter;
.source "FilterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcvi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcvi;, "Lcvi<TT;>;"
    .local p2, "filterModelList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcvi;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcvi;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Lcvi$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvi",
            "<TT;>.a;TT;I",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcvi;, "Lcvi<TT;>;"
    iget-object v0, p0, Lcvi;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcvi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    .local p0, "this":Lcvi;, "Lcvi<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    .local p0, "this":Lcvi;, "Lcvi<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Lcvi;, "Lcvi<TT;>;"
    if-nez p2, :cond_0

    .line 51
    new-instance v1, Lcvi$a;

    invoke-direct {v1, p0}, Lcvi$a;-><init>(Lcvi;)V

    .line 52
    .local v1, "viewHolder":Lcvi$a;, "Lcvi<TT;>.a;"
    iget-object v2, p0, Lcvi;->b:Landroid/content/Context;

    sget v3, Lctk$g;->filter_item_layout:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    sget v2, Lctk$f;->filter_textview:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcvi$a;->a:Landroid/widget/TextView;

    .line 54
    sget v2, Lctk$f;->notify_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcvi$a;->b:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lcvi;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "filterModel":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0, p1, p3}, Lcvi;->a(Lcvi$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V

    .line 63
    return-object p2

    .line 57
    .end local v0    # "filterModel":Ljava/lang/Object;, "TT;"
    .end local v1    # "viewHolder":Lcvi$a;, "Lcvi<TT;>.a;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvi$a;

    .restart local v1    # "viewHolder":Lcvi$a;, "Lcvi<TT;>.a;"
    goto :goto_0
.end method
