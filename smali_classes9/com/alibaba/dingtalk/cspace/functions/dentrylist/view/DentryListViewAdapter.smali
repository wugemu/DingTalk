.class public Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
.super Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;
.source "DentryListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter",
        "<",
        "Lgeh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lged$a;

.field public b:I

.field public c:I

.field public d:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    .line 36
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c:I

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->i:Z

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->j:Z

    .line 68
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$a;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .param p1, "positionInBodyList"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeh;

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 196
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    const/4 v1, -0x1

    .line 199
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 205
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    if-nez v0, :cond_1

    .line 207
    if-ne p2, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lgeq;->a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgeq;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 210
    :cond_0
    if-ne p2, v2, :cond_3

    .line 211
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lgep;->a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgep;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    if-ne v0, v1, :cond_3

    .line 216
    if-ne p2, v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lgen;->a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgen;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    if-ne p2, v2, :cond_3

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lgem;->a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgem;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->k:Ljava/util/HashMap;

    .line 82
    :goto_0
    return-object v1

    .line 1246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 80
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->k:Ljava/util/HashMap;

    .line 82
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->k:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;I)V
    .locals 2
    .param p1, "holder"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    instance-of v1, p1, Lgej;

    if-nez v1, :cond_0

    .line 234
    .end local p1    # "holder":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    :goto_0
    return-void

    .line 232
    .restart local p1    # "holder":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    .line 233
    .local v0, "viewModel":Lgeh;
    check-cast p1, Lgej;

    .end local p1    # "holder":Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->h:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p0, v1}, Lgej;->a(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Lgeh;)V
    .locals 5
    .param p1, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "position":I
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeh;

    .line 116
    .local v1, "viewModel":Lgeh;
    if-eqz v1, :cond_1

    .line 2042
    iget-object v3, p1, Lgeh;->d:Ljava/lang/String;

    .line 3042
    iget-object v4, v1, Lgeh;->d:Ljava/lang/String;

    .line 116
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_1

    .line 121
    .end local v1    # "viewModel":Lgeh;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "dentryViewModels":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public final b(Lgeh;)Lgei;
    .locals 1
    .param p1, "viewModel"    # Lgeh;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    invoke-interface {v0, p1}, Lged$a;->a(Lgeh;)Lgei;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 2
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b(Lgeh;)Lgei;

    move-result-object v0

    .line 134
    .local v0, "wrapper":Lgei;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 4025
    :cond_0
    iget-object v1, v0, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    goto :goto_0
.end method
