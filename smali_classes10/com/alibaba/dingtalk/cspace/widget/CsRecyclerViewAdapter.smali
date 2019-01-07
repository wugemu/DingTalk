.class public abstract Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;,
        Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;,
        Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewModel:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;",
        ">;"
    }
.end annotation


# instance fields
.field protected final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TViewModel;>;"
        }
    .end annotation
.end field

.field protected h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->h:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private b(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    const/16 v3, 0x7d0

    const/16 v2, 0x3e8

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    if-ltz p2, :cond_2

    if-ge p2, v2, :cond_2

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;

    move-result-object v1

    .line 152
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 153
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CsRecyclerViewAdapter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "viewHolder is null, use NullViewHolder instead, viewType: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 154
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 153
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->h:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;->a(Landroid/content/Context;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$b;

    move-result-object v1

    .line 158
    :cond_1
    return-object v1

    .line 139
    :cond_2
    if-lt p2, v2, :cond_3

    if-ge p2, v3, :cond_3

    .line 140
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    add-int/lit16 v3, p2, -0x3e8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;

    .line 141
    .local v0, "itemProvider":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;->a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;

    move-result-object v1

    goto :goto_0

    .line 145
    .end local v0    # "itemProvider":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;
    :cond_3
    if-lt p2, v3, :cond_0

    .line 146
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    add-int/lit16 v3, p2, -0x7d0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;

    .line 147
    .restart local v0    # "itemProvider":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;->a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;)V
    .locals 1
    .param p1, "itemProvider"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;

    .prologue
    .line 219
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public abstract a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;I)V
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    .local v2, "headerCount":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 101
    .local v0, "bodyCount":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 103
    .local v1, "footerCount":I
    if-lez v2, :cond_0

    if-ge p1, v2, :cond_0

    .line 104
    const/16 v3, 0x3e8

    .line 117
    :goto_0
    return v3

    .line 107
    :cond_0
    sub-int/2addr p1, v2

    .line 108
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    .line 109
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    :cond_1
    sub-int/2addr p1, v0

    .line 113
    if-lez v1, :cond_2

    if-ge p1, v1, :cond_2

    .line 114
    const/16 v3, 0x7d0

    goto :goto_0

    .line 117
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;)V
    .locals 1
    .param p1, "itemProvider"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;

    .prologue
    .line 232
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TViewModel;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 203
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

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
    .line 75
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 76
    .local v2, "headerCount":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, "bodyCount":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    .local v1, "footerCount":I
    if-lez v2, :cond_0

    if-ge p1, v2, :cond_0

    .line 80
    add-int/lit16 v3, p1, 0x3e8

    .line 93
    :goto_0
    return v3

    .line 83
    :cond_0
    sub-int/2addr p1, v2

    .line 84
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->a(I)I

    move-result v3

    goto :goto_0

    .line 88
    :cond_1
    sub-int/2addr p1, v0

    .line 89
    if-lez v1, :cond_2

    if-ge p1, v1, :cond_2

    .line 90
    add-int/lit16 v3, p1, 0x7d0

    goto :goto_0

    .line 93
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    check-cast p1, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;

    .line 1165
    if-eqz p1, :cond_0

    .line 1168
    invoke-virtual {p0, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;I)V

    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual {p1, p0}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;->a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V

    goto :goto_0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;, "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter<TViewModel;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->b(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;

    move-result-object v0

    return-object v0
.end method
