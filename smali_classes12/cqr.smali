.class public abstract Lcqr;
.super Landroid/widget/BaseAdapter;
.source "AbsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/app/Activity;

.field protected c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 30
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcqr;->b:Landroid/app/Activity;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcqr;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcqr;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "isCopyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcqr;->b:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcqr;->a:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    .line 1149
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    const/4 v0, -0x1

    .line 1150
    const/4 v1, 0x0

    .line 1151
    iget-object v2, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1152
    invoke-virtual {p0, v3}, Lcqr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 136
    .local v0, "position":I
    :cond_0
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcqr;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 139
    :goto_1
    return-object v1

    .line 1156
    .end local v0    # "position":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1157
    goto :goto_0

    .line 139
    .restart local v0    # "position":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcqr;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    iget-object v0, p0, Lcqr;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcqr;->c(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    :goto_0
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcqr;->notifyDataSetChanged()V

    .line 102
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcqr;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final d()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    iget-object v0, p0, Lcqr;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcqr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p0, "this":Lcqr;, "Lcqr<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
