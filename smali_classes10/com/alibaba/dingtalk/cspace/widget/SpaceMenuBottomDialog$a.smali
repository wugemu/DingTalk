.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SpaceMenuBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgqm;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    .line 296
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->c:Landroid/content/Context;

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;
    .param p2, "x1"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized a(ILjava/lang/String;)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "menuName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqm;

    .line 315
    .local v1, "menuObject":Lgqm;
    if-eqz v1, :cond_2

    iget v2, v1, Lgqm;->a:I

    if-ne v2, p1, :cond_2

    .line 318
    iget-object v2, v1, Lgqm;->d:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    .end local v1    # "menuObject":Lgqm;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1069
    .restart local v1    # "menuObject":Lgqm;
    :cond_1
    :try_start_1
    iput-object p2, v1, Lgqm;->d:Ljava/lang/String;

    .line 322
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->notifyItemChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 313
    .end local v1    # "menuObject":Lgqm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "menuObject":Lgqm;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;Lgqm;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;
    .param p1, "x1"    # Lgqm;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(Lgqm;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Lgqm;)V
    .locals 1
    .param p1, "menuObject"    # Lgqm;

    .prologue
    .line 307
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "menuObjectList":Ljava/util/List;, "Ljava/util/List<Lgqm;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 290
    check-cast p1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    .line 1335
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqm;

    .line 1337
    if-eqz v0, :cond_0

    .line 1338
    invoke-static {p1, v0, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;Lgqm;I)V

    .line 1339
    :goto_0
    return-void

    .line 1342
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;I)V

    goto :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    .line 2329
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_menu_bottom_dialog_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/view/View;)V

    .line 290
    return-object v0
.end method
