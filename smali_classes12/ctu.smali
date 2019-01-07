.class public abstract Lctu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AbsRecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lctu$b;,
        Lctu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lctu$b;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lctu;->b:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lctu;->f:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lctu;->c:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lctu;->d:Ljava/util/Set;

    .line 244
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 229
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v0, p0, Lctu;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lctu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lctu;)Lctu$b;
    .locals 1
    .param p0, "x0"    # Lctu;

    .prologue
    .line 19
    iget-object v0, p0, Lctu;->e:Lctu$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public final a(I)V
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v0, p0, Lctu;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v0, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lctu;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lctu;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v2, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 157
    iget-object v2, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 164
    .local v0, "id":I
    :goto_0
    return v0

    .line 158
    .end local v0    # "id":I
    :cond_0
    iget-object v2, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0}, Lctu;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    .line 159
    invoke-direct {p0}, Lctu;->a()I

    move-result v2

    iget-object v3, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 160
    .local v1, "len":I
    iget-object v2, p0, Lctu;->f:Ljava/util/ArrayList;

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 161
    .restart local v0    # "id":I
    goto :goto_0

    .line 162
    .end local v0    # "id":I
    .end local v1    # "len":I
    :cond_1
    iget-object v2, p0, Lctu;->a:Ljava/util/List;

    iget-object v3, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lctu;->a(Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 199
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 200
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 201
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 202
    .local v0, "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lctu$2;

    invoke-direct {v2, p0, v0}, Lctu$2;-><init>(Lctu;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 216
    .end local v0    # "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v2, p0, Lctu;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lctu;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    .line 1220
    iget-object v3, p0, Lctu;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 181
    .local v1, "pos":I
    iget-object v2, p0, Lctu;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lctu;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "data":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lctu;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lctu;->e:Lctu$b;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lctu$1;

    invoke-direct {v3, p0, v1, v0}, Lctu$1;-><init>(Lctu;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 181
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    .local p0, "this":Lctu;, "Lctu<TT;>;"
    iget-object v0, p0, Lctu;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Lctu$a;

    iget-object v0, p0, Lctu;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, p0, v0}, Lctu$a;-><init>(Lctu;Landroid/view/View;)V

    move-object v0, v1

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lctu;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
