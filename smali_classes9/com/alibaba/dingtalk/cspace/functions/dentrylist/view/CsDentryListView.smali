.class public final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;
.super Ljava/lang/Object;
.source "CsDentryListView.java"

# interfaces
.implements Lged$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView$ViewMode;,
        Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView$BizMode;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

.field private b:Landroid/content/Context;

.field private c:Lged$a;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/LinearLayoutManager;

.field private f:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    .line 74
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1139
    iget v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    .line 77
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lgec;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lgec;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    .line 1202
    new-instance v1, Lgee;

    invoke-direct {v1, p0, v0, p2}, Lgee;-><init>(Lged$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 82
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c:Lged$a;

    .line 83
    return-void
.end method

.method private b(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->notifyDataSetChanged()V

    .line 169
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 5
    .param p1, "viewMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    if-nez p1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    .line 2099
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->e:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    .line 2100
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->e:Landroid/support/v7/widget/LinearLayoutManager;

    .line 2102
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->e:Landroid/support/v7/widget/LinearLayoutManager;

    .line 91
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    if-ne p1, v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    .line 2106
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->f:Landroid/support/v7/widget/GridLayoutManager;

    if-nez v1, :cond_3

    .line 2107
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->f:Landroid/support/v7/widget/GridLayoutManager;

    .line 2108
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->f:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;-><init>(Landroid/support/v7/widget/GridLayoutManager;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    .line 2109
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->f:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2111
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->f:Landroid/support/v7/widget/GridLayoutManager;

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final a()Lged$a;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c:Lged$a;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "viewMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 2143
    iput p1, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c(I)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 181
    return-void
.end method

.method public final a(Lgeh;)V
    .locals 1
    .param p1, "dentryViewModel"    # Lgeh;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a(Lgeh;)V

    .line 174
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .param p2, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "dentryViewModels":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a(Ljava/util/List;)V

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b(Z)V

    .line 140
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "admin"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 2188
    iput-boolean p1, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d:Z

    .line 191
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 216
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "bizMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 2152
    iget v1, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    if-eq v1, p1, :cond_0

    .line 2155
    iput p1, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    .line 2156
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->notifyDataSetChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->b(Z)V

    .line 163
    return-void
.end method

.method public final bridge synthetic setPresenter(Lcjd;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 23
    check-cast p1, Lged$a;

    .line 2197
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c:Lged$a;

    .line 2198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/CsDentryListView;->c:Lged$a;

    .line 3164
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 23
    :cond_0
    return-void
.end method
