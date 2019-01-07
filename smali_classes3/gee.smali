.class public final Lgee;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Lged$a;


# instance fields
.field final a:Lgef;

.field b:Lged$b;

.field c:Landroid/content/Context;

.field d:Lged$a$a;

.field e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgei;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Landroid/os/Bundle;

.field private m:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field private n:I

.field private o:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lgeg;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lgoj;

.field private y:Lxm;

.field private z:Lyb;


# direct methods
.method public constructor <init>(Lged$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Lged$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v1, p0, Lgee;->r:I

    .line 73
    iput v1, p0, Lgee;->s:I

    .line 74
    iput v1, p0, Lgee;->t:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lgee;->h:I

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgee;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgee;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgee;->w:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgee;->j:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 206
    iput-object p1, p0, Lgee;->b:Lged$b;

    .line 207
    iput-object p2, p0, Lgee;->c:Landroid/content/Context;

    .line 208
    iput-object p3, p0, Lgee;->l:Landroid/os/Bundle;

    .line 209
    new-instance v0, Lgef;

    invoke-direct {v0, p0, p2}, Lgef;-><init>(Lgee;Landroid/content/Context;)V

    iput-object v0, p0, Lgee;->a:Lgef;

    .line 210
    iget-object v0, p0, Lgee;->c:Landroid/content/Context;

    invoke-static {v0}, Lgpr;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lgee;->r:I

    .line 211
    iget-object v0, p0, Lgee;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lgee;->h:I

    .line 213
    iget v0, p0, Lgee;->r:I

    if-nez v0, :cond_1

    .line 214
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_space_filelist_style_list"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lgee;->b:Lged$b;

    invoke-interface {v0, p0}, Lged$b;->setPresenter(Lcjd;)V

    .line 220
    return-void

    .line 215
    :cond_1
    iget v0, p0, Lgee;->r:I

    if-ne v0, v2, :cond_0

    .line 216
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_space_filelist_style_card"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "localId"    # J

    .prologue
    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DIRTY_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgee;Ljava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Lgee;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 54
    .line 21164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21167
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lgee;->a(Ljava/lang/String;IZ)Lgeh;

    .line 21168
    invoke-virtual {p0, p1, v1, v1}, Lgee;->a(Ljava/lang/String;IZ)Lgeh;

    .line 21169
    iget-object v0, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgei;

    .line 21170
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 54
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lgei;
    .locals 1
    .param p1, "dentryKey"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgei;

    goto :goto_0
.end method

.method private c(I)Lgeg;
    .locals 2
    .param p1, "mSortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lgee;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeg;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 2
    .param p1, "dentryKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lgee;->b(Ljava/lang/String;)Lgei;

    move-result-object v0

    .line 529
    .local v0, "wrapper":Lgei;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 6025
    :cond_0
    iget-object v1, v0, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    goto :goto_0
.end method

.method a(Ljava/lang/String;IZ)Lgeh;
    .locals 5
    .param p1, "dentryKey"    # Ljava/lang/String;
    .param p2, "sortType"    # I
    .param p3, "remove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :cond_1
    invoke-virtual {p0, p2}, Lgee;->b(I)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "viewModels":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v1, v3

    .line 184
    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 188
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgeh;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeh;

    .line 190
    .local v1, "viewModel":Lgeh;
    if-eqz v1, :cond_4

    .line 3042
    iget-object v4, v1, Lgeh;->d:Ljava/lang/String;

    .line 190
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    if-eqz p3, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v1    # "viewModel":Lgeh;
    :cond_5
    move-object v1, v3

    .line 198
    goto :goto_0
.end method

.method public final a(Lgeh;)Lgei;
    .locals 1
    .param p1, "viewModel"    # Lgeh;

    .prologue
    .line 534
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6042
    :cond_0
    iget-object v0, p1, Lgeh;->d:Ljava/lang/String;

    .line 534
    invoke-direct {p0, v0}, Lgee;->b(Ljava/lang/String;)Lgei;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;
    .locals 1
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .prologue
    .line 507
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgee;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 224
    iget-object v2, p0, Lgee;->c:Landroid/content/Context;

    invoke-static {v2}, Lgpr;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lgee;->r:I

    .line 225
    iget-object v2, p0, Lgee;->c:Landroid/content/Context;

    invoke-static {v2, v4}, Lgpr;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lgee;->n:I

    .line 226
    iget-object v2, p0, Lgee;->b:Lged$b;

    iget v3, p0, Lgee;->r:I

    invoke-interface {v2, v3}, Lged$b;->a(I)V

    .line 228
    new-instance v0, Lgeg;

    invoke-direct {v0, v4}, Lgeg;-><init>(I)V

    .line 229
    .local v0, "letterSortDentryList":Lgeg;
    iget-object v2, p0, Lgee;->w:Ljava/util/Map;

    .line 3043
    iget v3, v0, Lgeg;->a:I

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Lgeg;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lgeg;-><init>(I)V

    .line 231
    .local v1, "timeSortDentryList":Lgeg;
    iget-object v2, p0, Lgee;->w:Ljava/util/Map;

    .line 4043
    iget v3, v1, Lgeg;->a:I

    .line 231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-class v3, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    .line 4240
    iget-object v2, p0, Lgee;->y:Lxm;

    if-eqz v2, :cond_0

    .line 4241
    iget-object v2, p0, Lgee;->y:Lxm;

    .line 233
    :goto_0
    invoke-static {v3, v2}, Lth;->a(Ljava/lang/Class;Lxm;)V

    .line 234
    invoke-static {}, Lth;->a()Lya;

    move-result-object v3

    .line 4418
    iget-object v2, p0, Lgee;->z:Lyb;

    if-eqz v2, :cond_1

    .line 4419
    iget-object v2, p0, Lgee;->z:Lyb;

    .line 234
    :goto_1
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "cspace_dentry_download"

    aput-object v6, v4, v5

    invoke-interface {v3, v2, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v2

    iput-object v2, p0, Lgee;->x:Lgoj;

    .line 237
    return-void

    .line 4244
    :cond_0
    new-instance v2, Lgee$2;

    invoke-direct {v2, p0}, Lgee$2;-><init>(Lgee;)V

    iput-object v2, p0, Lgee;->y:Lxm;

    .line 4414
    iget-object v2, p0, Lgee;->y:Lxm;

    goto :goto_0

    .line 4422
    :cond_1
    new-instance v2, Lgee$3;

    invoke-direct {v2, p0}, Lgee$3;-><init>(Lgee;)V

    iput-object v2, p0, Lgee;->z:Lyb;

    .line 4474
    iget-object v2, p0, Lgee;->z:Lyb;

    goto :goto_1
.end method

.method public final a(I)V
    .locals 2
    .param p1, "sortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 912
    iget v0, p0, Lgee;->h:I

    if-ne v0, p1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 915
    :cond_0
    iput p1, p0, Lgee;->h:I

    .line 916
    iget-object v0, p0, Lgee;->c:Landroid/content/Context;

    iget v1, p0, Lgee;->h:I

    invoke-static {v0, v1}, Lgpr;->b(Landroid/content/Context;I)V

    .line 917
    invoke-virtual {p0}, Lgee;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->create()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 99
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    iget-object v4, p0, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 102
    invoke-virtual {p0, v0}, Lgee;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    new-instance v3, Lgeh;

    invoke-direct {v3}, Lgeh;-><init>()V

    .line 2022
    .local v3, "viewModel":Lgeh;
    iput v6, v3, Lgeh;->a:I

    .line 105
    invoke-virtual {p0, v0}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v4

    .line 2046
    iput-object v4, v3, Lgeh;->d:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v6}, Lgee;->b(I)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "letterSortDentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lgee;->b(I)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "timeSortDentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v2, :cond_3

    .line 114
    invoke-interface {v2, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    :cond_3
    invoke-virtual {p0}, Lgee;->q()V

    .line 118
    invoke-virtual {p0}, Lgee;->n()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Z)V
    .locals 2
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "admin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iput-object p1, p0, Lgee;->m:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 484
    iget-object v0, p0, Lgee;->m:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getSpace()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    iput-object v0, p0, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 485
    iget-object v0, p0, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgee;->f:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lgee;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v0

    iput v0, p0, Lgee;->n:I

    .line 487
    iget-object v0, p0, Lgee;->m:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    iput-object v0, p0, Lgee;->o:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 488
    iget-object v0, p0, Lgee;->o:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgee;->p:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lgee;->o:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgee;->g:Ljava/lang/String;

    .line 491
    iput-boolean p2, p0, Lgee;->q:Z

    .line 492
    iget-object v0, p0, Lgee;->b:Lged$b;

    iget-boolean v1, p0, Lgee;->q:Z

    invoke-interface {v0, v1}, Lged$b;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lged$a$a;)V
    .locals 0
    .param p1, "listener"    # Lged$a$a;

    .prologue
    .line 497
    iput-object p1, p0, Lgee;->d:Lged$a$a;

    .line 498
    return-void
.end method

.method a(Lgeg;)V
    .locals 1
    .param p1, "listWrapper"    # Lgeg;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lgee$1;

    invoke-direct {v0, p0, p1}, Lgee$1;-><init>(Lgee;Lgeg;)V

    invoke-static {v0}, Lgpr;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v0, p0, Lgee;->a:Lgef;

    invoke-virtual {v0, p1}, Lgef;->a(Ljava/util/List;)V

    .line 934
    return-void
.end method

.method a(Ltl;Ljava/util/Map;Lgeg;)V
    .locals 2
    .param p1, "loadResult"    # Ltl;
    .param p3, "listWrapper"    # Lgeg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;",
            "Lgeg;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 727
    .local p2, "dentryExtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 728
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgee;->b(Z)Z

    .line 737
    :goto_0
    return-void

    .line 731
    :cond_1
    const-string/jumbo v0, "handleLoadDentryResult"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgee$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lgee$7;-><init>(Lgee;Ltl;Ljava/util/Map;Lgeg;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "selectAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1014
    if-nez p1, :cond_2

    move v1, v4

    .line 1015
    .local v1, "deselectAll":Z
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgee;->o()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v1, :cond_4

    .line 17559
    iget-object v5, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_3

    .line 1015
    :goto_1
    if-eqz v4, :cond_4

    .line 1027
    :cond_1
    :goto_2
    return-void

    .end local v1    # "deselectAll":Z
    :cond_2
    move v1, v3

    .line 1014
    goto :goto_0

    .restart local v1    # "deselectAll":Z
    :cond_3
    move v4, v3

    .line 17559
    goto :goto_1

    .line 1018
    :cond_4
    iget-object v4, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgei;

    .line 1019
    .local v2, "wrapper":Lgei;
    if-eqz v2, :cond_5

    .line 18037
    iput-boolean p1, v2, Lgei;->b:Z

    goto :goto_3

    .line 1023
    .end local v2    # "wrapper":Lgei;
    :cond_6
    iget-object v4, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    .line 1024
    .local v0, "allDentryCount":I
    iget-object v4, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_7

    move v3, v0

    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1025
    iget-object v3, p0, Lgee;->b:Lged$b;

    invoke-interface {v3}, Lged$b;->e()V

    .line 1026
    iget-object v3, p0, Lgee;->d:Lged$a$a;

    iget-object v4, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lged$a$a;->a(II)V

    goto :goto_2
.end method

.method public final b()Lgeg;
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lgee;->h:I

    invoke-direct {p0, v0}, Lgee;->c(I)Lgeg;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 2
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgee;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)Ljava/util/List;
    .locals 2
    .param p1, "sortType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lgee;->c(I)Lgeg;

    move-result-object v0

    .line 151
    .local v0, "wrapper":Lgeg;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 3023
    :cond_0
    iget-object v1, v0, Lgeg;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public final b(Lgeh;)V
    .locals 3
    .param p1, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 938
    iget-object v0, p0, Lgee;->a:Lgef;

    .line 14184
    iget-object v1, v0, Lgef;->a:Lgee;

    invoke-virtual {v1, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    .line 14185
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14186
    :cond_0
    :goto_0
    return-void

    .line 14189
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 14190
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14194
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v0, v0, Lgef;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lgpe;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Z
    .locals 5
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 544
    invoke-virtual {p0}, Lgee;->o()Z

    move-result v0

    .line 545
    .local v0, "allSelected":Z
    new-instance v1, Lgei;

    invoke-direct {v1, p1, v0}, Lgei;-><init>(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Z)V

    .line 7503
    .local v1, "dentryWrapper":Lgei;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 6564
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6565
    const/4 v2, 0x0

    .line 547
    .local v2, "result":Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 548
    iget-object v3, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 550
    :cond_0
    return v2

    .line 8025
    .end local v2    # "result":Z
    :cond_1
    iget-object v3, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 7503
    invoke-virtual {p0, v3}, Lgee;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6567
    :cond_2
    iget-object v4, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6568
    const/4 v2, 0x1

    goto :goto_1
.end method

.method b(Z)Z
    .locals 3
    .param p1, "isLoading"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lgee;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 577
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgee;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgeh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lgee;->h:I

    invoke-virtual {p0, v0}, Lgee;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgeh;)V
    .locals 5
    .param p1, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 943
    iget-object v0, p0, Lgee;->a:Lgef;

    .line 14198
    iget-object v1, v0, Lgef;->a:Lgee;

    invoke-virtual {v1, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    .line 14199
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14215
    :cond_0
    :goto_0
    return-void

    .line 14203
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 14204
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14208
    iget-object v2, v0, Lgef;->b:Landroid/content/Context;

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lgef;->b:Landroid/content/Context;

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14209
    :cond_2
    new-instance v2, Lgpa;

    invoke-direct {v2}, Lgpa;-><init>()V

    .line 14210
    iput-object v1, v2, Lgpa;->a:Ljava/lang/Object;

    .line 14211
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v3

    iput-boolean v3, v2, Lgpa;->c:Z

    .line 14212
    const/4 v3, 0x1

    iput v3, v2, Lgpa;->g:I

    .line 14213
    invoke-static {v1}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v2, Lgpa;->f:I

    .line 14214
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v1

    invoke-virtual {v0}, Lgef;->a()Lgpe$b;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_0

    .line 14218
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, v0, Lgef;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14219
    sget v3, Lfzs$h;->dt_cspace_upload_network_tip:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14220
    sget v3, Lfzs$h;->dt_cspace_upload_network_ok:I

    new-instance v4, Lgef$2;

    invoke-direct {v4, v0, v1}, Lgef$2;-><init>(Lgef;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14231
    sget v1, Lfzs$h;->cancel:I

    new-instance v3, Lgef$3;

    invoke-direct {v3, v0}, Lgef$3;-><init>(Lgef;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 14237
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1031
    iget-object v2, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    const/4 v0, 0x0

    .line 1040
    :cond_0
    return-object v0

    .line 1034
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1035
    .local v0, "csDentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/CsDentry;>;"
    iget-object v2, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgei;

    .line 1036
    .local v1, "wrapper":Lgei;
    if-eqz v1, :cond_2

    .line 19033
    iget-boolean v3, v1, Lgei;->b:Z

    .line 1036
    if-eqz v3, :cond_2

    .line 20025
    iget-object v3, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1036
    if-eqz v3, :cond_2

    .line 21025
    iget-object v3, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1037
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final d(Lgeh;)V
    .locals 7
    .param p1, "dentryViewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 948
    iget-object v0, p0, Lgee;->a:Lgef;

    .line 14241
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_filelist_delete_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 14243
    iget-object v1, v0, Lgef;->a:Lgee;

    invoke-virtual {v1, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    .line 14244
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14259
    :cond_0
    :goto_0
    return-void

    .line 14248
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 14249
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14253
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v2, v0, Lgef;->b:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lgpe;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 14255
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v1

    .line 14256
    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    .line 14257
    :goto_1
    const/16 v1, 0x14a

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v1

    .line 14258
    if-eqz v1, :cond_3

    instance-of v2, v1, Lgmm;

    if-eqz v2, :cond_3

    .line 14259
    check-cast v1, Lgmm;

    iget-object v2, v0, Lgef;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lgmm;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V

    goto :goto_0

    .line 14256
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v4

    goto :goto_1

    .line 14261
    :cond_3
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 583
    invoke-virtual {p0, v4}, Lgee;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lgee;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8629
    new-instance v5, Lgee$5;

    invoke-direct {v5, p0}, Lgee$5;-><init>(Lgee;)V

    .line 8694
    iget-object v0, p0, Lgee;->x:Lgoj;

    iget-object v1, p0, Lgee;->f:Ljava/lang/String;

    iget-object v2, p0, Lgee;->g:Ljava/lang/String;

    iget v3, p0, Lgee;->h:I

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {p0}, Lgee;->p()V

    goto :goto_0
.end method

.method public final e(Lgeh;)V
    .locals 3
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lgee;->a(Lgeh;)Lgei;

    move-result-object v1

    .line 993
    .local v1, "wrapper":Lgei;
    if-nez v1, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 16033
    :cond_1
    iget-boolean v2, v1, Lgei;->b:Z

    .line 998
    if-eqz v2, :cond_2

    .line 999
    const/4 v2, 0x0

    .line 16037
    iput-boolean v2, v1, Lgei;->b:Z

    .line 1000
    iget-object v2, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 1006
    .local v0, "selectCount":I
    :goto_1
    iget-object v2, p0, Lgee;->b:Lged$b;

    invoke-interface {v2, p1}, Lged$b;->a(Lgeh;)V

    .line 1007
    iget-object v2, p0, Lgee;->d:Lged$a$a;

    if-eqz v2, :cond_0

    .line 1008
    iget-object v2, p0, Lgee;->d:Lged$a$a;

    invoke-interface {v2, p1, v1, v0}, Lged$a$a;->a(Lgeh;Lgei;I)V

    goto :goto_0

    .line 1002
    .end local v0    # "selectCount":I
    :cond_2
    const/4 v2, 0x1

    .line 17037
    iput-boolean v2, v1, Lgei;->b:Z

    .line 1003
    iget-object v2, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .restart local v0    # "selectCount":I
    goto :goto_1
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 888
    iget-object v1, p0, Lgee;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p0}, Lgee;->b()Lgeg;

    move-result-object v0

    .line 893
    .local v0, "wrapper":Lgeg;
    if-eqz v0, :cond_0

    .line 13027
    iget-boolean v1, v0, Lgeg;->c:Z

    .line 893
    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {p0}, Lgee;->e()V

    goto :goto_0
.end method

.method public final f(Lgeh;)V
    .locals 2
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1045
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    invoke-virtual {p0, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    invoke-interface {v0, v1}, Lged$a$a;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 1076
    return-void
.end method

.method public final g(Lgeh;)V
    .locals 2
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1052
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    invoke-virtual {p0, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lged$a$a;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V

    .line 1055
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.method public final h(Lgeh;)V
    .locals 2
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1059
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    invoke-virtual {p0, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lged$a$a;->b(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V

    .line 1062
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1085
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    iget-object v1, p0, Lgee;->y:Lxm;

    invoke-static {v0, v1}, Lth;->b(Ljava/lang/Class;Lxm;)V

    .line 1086
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgee;->z:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 1087
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v0, p0, Lgee;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgpe;->a(Landroid/content/Context;I)V

    .line 1088
    return-void
.end method

.method public final i(Lgeh;)V
    .locals 2
    .param p1, "viewModel"    # Lgeh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1066
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lgee;->d:Lged$a$a;

    invoke-virtual {p0, p1}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lged$a$a;->c(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V

    .line 1069
    :cond_0
    return-void
.end method

.method public final j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 1
    .param p1, "viewModel"    # Lgeh;

    .prologue
    .line 524
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5042
    :cond_0
    iget-object v0, p1, Lgeh;->d:Ljava/lang/String;

    .line 524
    invoke-virtual {p0, v0}, Lgee;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 901
    invoke-virtual {p0}, Lgee;->b()Lgeg;

    move-result-object v0

    .line 902
    .local v0, "wrapper":Lgeg;
    if-nez v0, :cond_0

    .line 908
    :goto_0
    return-void

    .line 905
    :cond_0
    const/4 v1, 0x1

    .line 13031
    iput-boolean v1, v0, Lgeg;->c:Z

    .line 906
    const/4 v1, 0x0

    .line 13039
    iput-object v1, v0, Lgeg;->d:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lgee;->e()V

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 922
    iget v0, p0, Lgee;->r:I

    if-nez v0, :cond_1

    .line 923
    const/4 v0, 0x1

    iput v0, p0, Lgee;->r:I

    .line 927
    :goto_0
    iget-object v0, p0, Lgee;->c:Landroid/content/Context;

    iget v1, p0, Lgee;->r:I

    .line 13474
    if-eqz v0, :cond_0

    .line 13477
    const-string/jumbo v2, "pref_space_view_mode"

    invoke-static {v0, v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 928
    :cond_0
    iget-object v0, p0, Lgee;->b:Lged$b;

    iget v1, p0, Lgee;->r:I

    invoke-interface {v0, v1}, Lged$b;->a(I)V

    .line 929
    return-void

    .line 925
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lgee;->r:I

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 961
    iget v0, p0, Lgee;->s:I

    if-ne v0, v1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 965
    :cond_0
    iget v0, p0, Lgee;->s:I

    iput v0, p0, Lgee;->t:I

    .line 966
    iput v1, p0, Lgee;->s:I

    .line 967
    iget-object v0, p0, Lgee;->b:Lged$b;

    iget v1, p0, Lgee;->s:I

    invoke-interface {v0, v1}, Lged$b;->b(I)V

    goto :goto_0
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 972
    iget v1, p0, Lgee;->s:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 988
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v1, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgei;

    .line 977
    .local v0, "wrapper":Lgei;
    if-eqz v0, :cond_1

    .line 15033
    iget-boolean v2, v0, Lgei;->b:Z

    .line 977
    if-eqz v2, :cond_1

    .line 980
    const/4 v2, 0x0

    .line 15037
    iput-boolean v2, v0, Lgei;->b:Z

    .line 981
    iget-object v2, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 986
    .end local v0    # "wrapper":Lgei;
    :cond_2
    iget v1, p0, Lgee;->t:I

    iput v1, p0, Lgee;->s:I

    .line 987
    iget-object v1, p0, Lgee;->b:Lged$b;

    iget v2, p0, Lgee;->s:I

    invoke-interface {v1, v2}, Lged$b;->b(I)V

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lgee;->b()Lgeg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgee;->a(Lgeg;)V

    .line 124
    return-void
.end method

.method o()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 554
    iget-object v1, p0, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 555
    .local v0, "selectCount":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lgee;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method p()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-virtual {p0}, Lgee;->b()Lgeg;

    move-result-object v7

    .line 595
    .local v7, "listWrapper":Lgeg;
    if-nez v7, :cond_0

    .line 596
    invoke-virtual {p0, v1}, Lgee;->b(Z)Z

    .line 626
    :goto_0
    return-void

    .line 9027
    :cond_0
    iget-boolean v0, v7, Lgeg;->c:Z

    .line 599
    if-nez v0, :cond_1

    .line 600
    invoke-virtual {p0, v1}, Lgee;->b(Z)Z

    .line 601
    invoke-virtual {p0, v7}, Lgee;->a(Lgeg;)V

    goto :goto_0

    .line 604
    :cond_1
    new-instance v6, Lgee$4;

    invoke-direct {v6, p0, v7}, Lgee$4;-><init>(Lgee;Lgeg;)V

    .line 624
    .local v6, "listener":Lcma;, "Lcma<Ltl;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lgee;->c:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ltl;>;"
    check-cast v6, Lcma;

    .line 625
    .restart local v6    # "listener":Lcma;, "Lcma<Ltl;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lgee;->f:Ljava/lang/String;

    iget-object v2, p0, Lgee;->p:Ljava/lang/String;

    iget-object v3, p0, Lgee;->g:Ljava/lang/String;

    .line 9043
    iget v4, v7, Lgeg;->a:I

    .line 10035
    iget-object v5, v7, Lgeg;->d:Ljava/lang/String;

    .line 625
    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final q()V
    .locals 18

    .prologue
    .line 837
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgee;->b(I)Ljava/util/List;

    move-result-object v5

    .line 838
    .local v5, "dentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 884
    :cond_0
    return-void

    .line 842
    :cond_1
    const/4 v7, 0x1

    .line 843
    .local v7, "isFirstOne":Z
    const/4 v6, 0x0

    .line 844
    .local v6, "indexInSection":I
    const/4 v10, 0x0

    .line 845
    .local v10, "preSection":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 846
    .local v8, "now":J
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgeh;

    .line 847
    .local v11, "viewModel":Lgeh;
    if-eqz v11, :cond_2

    .line 850
    const/4 v14, 0x0

    .line 11030
    iput-object v14, v11, Lgeh;->b:Ljava/lang/String;

    .line 851
    const/4 v14, 0x0

    .line 11038
    iput v14, v11, Lgeh;->c:I

    .line 12018
    iget v12, v11, Lgeh;->a:I

    .line 853
    .local v12, "viewType":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_3

    const/4 v14, 0x2

    if-ne v12, v14, :cond_2

    .line 856
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lgee;->j(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v2

    .line 857
    .local v2, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 861
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    .line 863
    .local v4, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 864
    const/4 v3, 0x0

    .line 871
    .local v3, "currSection":Ljava/lang/String;
    :goto_1
    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 872
    if-nez v7, :cond_4

    .line 873
    add-int/lit8 v6, v6, 0x1

    .line 12030
    :cond_4
    :goto_2
    iput-object v3, v11, Lgeh;->b:Ljava/lang/String;

    .line 12038
    iput v6, v11, Lgeh;->c:I

    .line 882
    const/4 v7, 0x0

    .line 883
    goto :goto_0

    .line 865
    .end local v3    # "currSection":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 866
    sget v14, Lfzs$h;->dt_cspace_folder:I

    invoke-static {v14}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "currSection":Ljava/lang/String;
    goto :goto_1

    .line 868
    .end local v3    # "currSection":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lgee;->c:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1, v8, v9}, Lgqh;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "currSection":Ljava/lang/String;
    goto :goto_1

    .line 876
    :cond_7
    const/4 v6, 0x0

    .line 877
    move-object v10, v3

    goto :goto_2
.end method
