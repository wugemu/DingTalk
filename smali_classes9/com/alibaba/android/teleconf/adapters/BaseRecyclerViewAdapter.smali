.class public abstract Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;,
        Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->a:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 72
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    iput p1, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->c:I

    .line 73
    return-void
.end method

.method public final a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .prologue
    .line 76
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->d:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .line 77
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b(Ljava/util/List;)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :goto_0
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    .local p0, "this":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;, "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->d:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->d:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;->a(Landroid/view/View;I)V

    .line 92
    :cond_0
    return-void
.end method
