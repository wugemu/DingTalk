.class public final Lsi;
.super Lrq;
.source "SingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public e:Lsi$a;

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I
    .param p3, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 59
    .local p0, "this":Lsi;, "Lsi<TT;>;"
    invoke-direct {p0, p1, p2}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lsi;->a:I

    .line 60
    iput-object p3, p0, Lsi;->f:Landroid/widget/ListView;

    .line 1121
    iget-object v0, p0, Lsi;->f:Landroid/widget/ListView;

    new-instance v1, Lsi$1;

    invoke-direct {v1, p0}, Lsi$1;-><init>(Lsi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected final a(Lrr;Ljava/lang/Object;)V
    .locals 4
    .param p1, "baseAdapterHelper"    # Lrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrr;",
            "TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    .local p0, "this":Lsi;, "Lsi<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lsi;->e:Lsi$a;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lsi;->e:Lsi$a;

    invoke-interface {v2, p1, p2}, Lsi$a;->a(Lrr;Ljava/lang/Object;)Z

    move-result v0

    .line 84
    .local v0, "handle":Z
    if-eqz v0, :cond_1

    .line 98
    .end local v0    # "handle":Z
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    instance-of v2, p2, Lafn;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 90
    check-cast v1, Lafn;

    .line 91
    .local v1, "menu":Lafn;
    sget v2, Laxo$f;->description:I

    .line 1140
    iget-object v3, v1, Lafn;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v2, v3}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 92
    invoke-virtual {p1}, Lrr;->a()I

    move-result v2

    iget v3, p0, Lsi;->a:I

    if-ne v2, v3, :cond_2

    .line 93
    sget v2, Laxo$f;->select:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lrr;->a(II)Lrr;

    goto :goto_0

    .line 95
    :cond_2
    sget v2, Laxo$f;->select:I

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lrr;->a(II)Lrr;

    goto :goto_0
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lsi;, "Lsi<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x3

    .line 65
    if-eqz p1, :cond_2

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 71
    .local v0, "item":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p0, v1}, Lsi;->a(Ljava/util/List;)V

    .line 77
    .end local v1    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lsi;, "Lsi<TT;>;"
    iput p1, p0, Lsi;->a:I

    .line 102
    iget-object v0, p0, Lsi;->e:Lsi$a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lsi;->e:Lsi$a;

    invoke-virtual {p0, p1}, Lsi;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lsi$a;->a(ILjava/lang/Object;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lsi;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
