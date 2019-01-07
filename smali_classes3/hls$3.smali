.class final Lhls$3;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
.source "MiniappInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhls;


# direct methods
.method constructor <init>(Lhls;)V
    .locals 0
    .param p1, "this$0"    # Lhls;

    .prologue
    .line 487
    iput-object p1, p0, Lhls$3;->a:Lhls;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final goBack()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 536
    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->c(Lhls;)Lhlz;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->c(Lhls;)Lhlz;

    move-result-object v2

    invoke-interface {v2}, Lhlz;->b()Liop;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 537
    const-string/jumbo v1, "h5ToolbarBack"

    .line 538
    .local v1, "eventName":Ljava/lang/String;
    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->c(Lhls;)Lhlz;

    move-result-object v2

    invoke-interface {v2}, Lhlz;->b()Liop;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 547
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->d(Lhls;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->d(Lhls;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lhls$3;->a:Lhls;

    invoke-static {v2}, Lhls;->d(Lhls;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 542
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public final hideActionBar(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 552
    return-void
.end method

.method public final setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    .prologue
    .line 517
    return-void
.end method

.method public final setActionBarTitle(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "changeRedDot"    # Z
    .param p4, "eventEnable"    # Z

    .prologue
    .line 512
    return-void
.end method

.method public final setActions(Ljava/util/List;Z)V
    .locals 0
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

    .prologue
    .line 527
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method

.method public final setHelpIcon(ZI)V
    .locals 0
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I

    .prologue
    .line 502
    return-void
.end method

.method public final setLeft(ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "isBackArrowVisible"    # Z
    .param p2, "isHomeIconVisible"    # Z
    .param p3, "isControl"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 492
    return-void
.end method

.method public final setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 522
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method

.method public final setPullGesture(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 557
    return-void
.end method

.method public final setRight(ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "isShow"    # Z
    .param p2, "isControl"    # Z
    .param p3, "disable"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 497
    return-void
.end method

.method public final setTitleIcon(ZILjava/lang/String;)V
    .locals 0
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I
    .param p3, "iconUnicode"    # Ljava/lang/String;

    .prologue
    .line 507
    return-void
.end method

.method public final showTitleDropListMenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method
