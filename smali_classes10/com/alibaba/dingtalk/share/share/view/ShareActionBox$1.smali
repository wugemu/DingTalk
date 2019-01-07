.class final Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;
.super Ljava/lang/Object;
.source "ShareActionBox.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v7}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v1, v6, p3

    .line 406
    .local v1, "clickPos":I
    if-ltz v1, :cond_1

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 407
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 408
    .local v5, "viewItem":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v0, "args":Ljava/util/Map;
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getUt()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v6, "STATISTICS"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 413
    invoke-static {v8}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 415
    .end local v0    # "args":Ljava/util/Map;
    :cond_0
    if-eqz v5, :cond_1

    .line 416
    invoke-virtual {v5}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getUt()Ljava/lang/String;

    .line 417
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 418
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 434
    .end local v5    # "viewItem":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->dismiss()V

    .line 435
    return-void

    .line 420
    .restart local v5    # "viewItem":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->h(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->h(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_1

    .line 421
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->h(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 422
    .local v3, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {v5, v3}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 424
    invoke-virtual {v3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getShareKey()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "shareKey":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "intent.action.jsapi.share"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "shareKey"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
