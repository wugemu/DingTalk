.class public final Lgef;
.super Ljava/lang/Object;
.source "DentryListViewUploadUseCase.java"


# instance fields
.field final a:Lgee;

.field final b:Landroid/content/Context;

.field private c:Lgpe$b;


# direct methods
.method public constructor <init>(Lgee;Landroid/content/Context;)V
    .locals 1
    .param p1, "presenter"    # Lgee;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgee;

    iput-object v0, p0, Lgef;->a:Lgee;

    .line 43
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgef;->b:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method a()Lgpe$b;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lgef;->c:Lgpe$b;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lgef;->c:Lgpe$b;

    .line 180
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lgef$1;

    invoke-direct {v0, p0}, Lgef$1;-><init>(Lgef;)V

    iput-object v0, p0, Lgef;->c:Lgpe$b;

    .line 179
    iget-object v0, p0, Lgef;->c:Lgpe$b;

    const-class v1, Lgpe$b;

    iget-object v2, p0, Lgef;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpe$b;

    iput-object v0, p0, Lgef;->c:Lgpe$b;

    .line 180
    iget-object v0, p0, Lgef;->c:Lgpe$b;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v7, "viewModels":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 53
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_2

    .line 57
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 58
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 59
    iget-object v9, p0, Lgef;->a:Lgee;

    .line 1952
    iget-object v9, v9, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 59
    invoke-virtual {v0, v9}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 61
    iget-object v9, p0, Lgef;->a:Lgee;

    invoke-virtual {v9, v0}, Lgee;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    new-instance v6, Lgeh;

    invoke-direct {v6}, Lgeh;-><init>()V

    .line 63
    .local v6, "viewModel":Lgeh;
    iget-object v9, p0, Lgef;->a:Lgee;

    invoke-virtual {v9, v0}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v9

    .line 2046
    iput-object v9, v6, Lgeh;->d:Ljava/lang/String;

    .line 64
    const/4 v9, 0x2

    .line 3022
    iput v9, v6, Lgeh;->a:I

    .line 65
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .end local v1    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v6    # "viewModel":Lgeh;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 72
    iget-object v8, p0, Lgef;->a:Lgee;

    invoke-virtual {v8, v12}, Lgee;->b(I)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "letterSortListWrapper":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v3, :cond_4

    .line 74
    invoke-interface {v3, v11, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 76
    :cond_4
    iget-object v8, p0, Lgef;->a:Lgee;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lgee;->b(I)Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, "timeSortWrapper":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v5, :cond_5

    .line 78
    invoke-interface {v5, v11, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 81
    :cond_5
    iget-object v8, p0, Lgef;->a:Lgee;

    invoke-virtual {v8}, Lgee;->q()V

    .line 82
    iget-object v8, p0, Lgef;->a:Lgee;

    invoke-virtual {v8}, Lgee;->n()V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 85
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_6

    .line 88
    new-instance v4, Lgpa;

    invoke-direct {v4}, Lgpa;-><init>()V

    .line 89
    .local v4, "param":Lgpa;
    iput-object v2, v4, Lgpa;->a:Ljava/lang/Object;

    .line 90
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v9

    iput-boolean v9, v4, Lgpa;->c:Z

    .line 91
    iput-boolean v11, v4, Lgpa;->d:Z

    .line 92
    iput v12, v4, Lgpa;->g:I

    .line 93
    invoke-static {v2}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v9

    iput v9, v4, Lgpa;->f:I

    .line 94
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v9

    invoke-virtual {p0}, Lgef;->a()Lgpe$b;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_1
.end method
