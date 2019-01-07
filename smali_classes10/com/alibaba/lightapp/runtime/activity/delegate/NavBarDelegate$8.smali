.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
.source "NavBarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v0, "tempMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1569
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/util/List;)Ljava/util/List;

    .line 1560
    :goto_0
    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1313
    .line 3472
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a()V

    .line 3474
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3476
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3478
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3479
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3480
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->v(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3509
    :cond_0
    :goto_0
    return-void

    .line 3483
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 3484
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "-4"

    .line 3485
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3486
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3487
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    goto :goto_0

    .line 3489
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3490
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3491
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3492
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3495
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 3496
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3497
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    goto :goto_0

    .line 3498
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3499
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3500
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3501
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3502
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3504
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->y(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->z(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    goto/16 :goto_0

    .line 3507
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 3508
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3509
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    goto/16 :goto_0

    .line 3511
    :cond_6
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {v2, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3512
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3513
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1313
    .line 3525
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a()V

    .line 3527
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3529
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->u(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3530
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3531
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3532
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3533
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->v(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3545
    :cond_0
    :goto_0
    return-void

    .line 3537
    :cond_1
    if-eqz p2, :cond_3

    .line 3538
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    :goto_1
    invoke-static {v3, v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3539
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3544
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3545
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->w(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3538
    goto :goto_1

    .line 3541
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3542
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->x(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3549
    :cond_4
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sMenuTextDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1313
    .line 2700
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->h(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2703
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2704
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->C(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1313
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2701
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2704
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1313
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Z

    .prologue
    .line 1313
    .line 2713
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2714
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->i(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    :cond_0
    return-void

    .line 2714
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static b()Z
    .locals 3

    .prologue
    .line 1723
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "dt_func_restrain_box_v420_android_enabled"

    const/4 v2, 0x0

    .line 1724
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1313
    .line 3574
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3575
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/util/List;)Ljava/util/List;

    .line 3580
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 3581
    new-instance v2, Lhrv;

    invoke-direct {v2}, Lhrv;-><init>()V

    .line 3582
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->a:Ljava/lang/String;

    .line 3583
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->b:Ljava/lang/String;

    .line 3584
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getIconId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->c:Ljava/lang/String;

    .line 3585
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getMediaId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->d:Ljava/lang/String;

    .line 3586
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getIconName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->e:Ljava/lang/String;

    .line 3587
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lhrv;->f:Ljava/lang/String;

    .line 3588
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lhrv;->i:Z

    .line 3589
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadgeJustRedDot()Z

    move-result v3

    iput-boolean v3, v2, Lhrv;->h:Z

    .line 3590
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhrv;->g:Ljava/lang/String;

    .line 3591
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->j(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1313
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;
    .param p1, "x1"    # Z

    .prologue
    .line 1313
    .line 3454
    if-eqz p1, :cond_0

    .line 3455
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3456
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3457
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->s(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3462
    :goto_0
    return-void

    .line 3459
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3460
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->r(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lhdn$g;->ui_common_action_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 3461
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->t(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getCurrentTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->text_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3462
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->s(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3464
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->s(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final goBack()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1651
    :cond_0
    return-void
.end method

.method public final hideActionBar(Z)V
    .locals 2
    .param p1, "isHidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1663
    :cond_0
    return-void
.end method

.method public final setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$11;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1637
    :cond_0
    return-void
.end method

.method public final setActionBarTitle(Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "changeRedDot"    # Z
    .param p4, "eventEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$9;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/lang/String;ZZZ)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1613
    :cond_0
    return-void
.end method

.method public final setActions(Ljava/util/List;Z)V
    .locals 2
    .param p2, "showFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1426
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$7;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1438
    :cond_0
    return-void
.end method

.method public final setHelpIcon(ZI)V
    .locals 2
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$5;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1393
    :cond_0
    return-void
.end method

.method public final setLeft(ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "isBackArrowVisible"    # Z
    .param p2, "isHomeIconVisible"    # Z
    .param p3, "isControl"    # Z
    .param p4, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, p3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)Z

    .line 1317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1326
    :cond_0
    return-void
.end method

.method public final setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "overflowMenuBackgroundColor"    # Ljava/lang/String;
    .param p3, "menuTextColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1397
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1422
    :cond_0
    return-void
.end method

.method public final setPullGesture(Z)V
    .locals 7
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v6, 0x10000000

    .line 1669
    invoke-static {}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1670
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1672
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_1

    move v0, v1

    .line 1673
    .local v0, "isContainNewTaskFlag":Z
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lhdz;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->B(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lhdz;

    move-result-object v3

    invoke-virtual {v3, p1}, Lhdz;->a(Z)V

    .line 1675
    if-nez p1, :cond_0

    .line 1677
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v3, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V

    .line 2688
    .end local v0    # "isContainNewTaskFlag":Z
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2689
    const-string/jumbo v4, "checkOrgSwitch"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    const-string/jumbo v4, "isContainNewTaskFlag"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "open_func_restrain_ena"

    invoke-interface {v1, v2, v4, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1684
    return-void

    :cond_1
    move v0, v2

    .line 1672
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2690
    goto :goto_1
.end method

.method public final setRight(ZZZLjava/lang/String;)V
    .locals 7
    .param p1, "isShow"    # Z
    .param p2, "isControl"    # Z
    .param p3, "disable"    # Z
    .param p4, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZZLjava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public final setTitleIcon(ZILjava/lang/String;)V
    .locals 2
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I
    .param p3, "iconUnicode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$10;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1625
    :cond_0
    return-void
.end method

.method public final showTitleDropListMenu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1442
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$8;-><init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1451
    :cond_0
    return-void
.end method
