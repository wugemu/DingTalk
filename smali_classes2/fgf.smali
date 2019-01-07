.class public abstract Lfgf;
.super Landroid/widget/BaseAdapter;
.source "BaseSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgf$a;
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
.field public a:Landroid/app/Activity;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseModel"    # I

    .prologue
    .line 44
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lfgf;->a:Landroid/app/Activity;

    .line 46
    iput p2, p0, Lfgf;->c:I

    .line 47
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;Lfgf$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lfgf",
            "<TT;>.a;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;ILfgf$a;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lfgf",
            "<TT;>.a;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .line 1058
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1063
    :goto_0
    if-eqz p1, :cond_0

    .line 1064
    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lfgf;->notifyDataSetChanged()V

    .line 55
    return-void

    .line 1061
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfgf;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .line 81
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    iget-object v0, p0, Lfgf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 86
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfgf;, "Lfgf<TT;>;"
    const/4 v5, 0x0

    .line 92
    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgf$a;

    .line 102
    .local v0, "holder":Lfgf$a;, "Lfgf<TT;>.a;"
    :goto_0
    iget v2, p0, Lfgf;->c:I

    if-nez v2, :cond_2

    .line 103
    iget-object v2, v0, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v2, p0, Lfgf;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, v1, p1, v0, p3}, Lfgf;->a(Ljava/lang/Object;ILfgf$a;Landroid/view/ViewGroup;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lfgf;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 115
    iget-object v2, v0, Lfgf$a;->e:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_2
    return-object p2

    .line 95
    .end local v0    # "holder":Lfgf$a;, "Lfgf<TT;>.a;"
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Lfgf$a;

    invoke-direct {v0, p0}, Lfgf$a;-><init>(Lfgf;)V

    .line 96
    .restart local v0    # "holder":Lfgf$a;, "Lfgf<TT;>.a;"
    iget-object v2, p0, Lfgf;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lfgf;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    iput-object p2, v0, Lfgf$a;->a:Landroid/view/View;

    .line 98
    invoke-virtual {p0, p2, v0}, Lfgf;->a(Landroid/view/View;Lfgf$a;)V

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, v0, Lfgf$a;->b:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 117
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v2, v0, Lfgf$a;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
