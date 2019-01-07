.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1401
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    invoke-static {v2, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1403
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget-object v3, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;->SetMenu:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;)Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$MenuAction;

    .line 1404
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)V

    .line 1405
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->c:Ljava/lang/String;

    .line 1406
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d:Ljava/lang/String;

    .line 1407
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->o(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)V

    .line 1410
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->b(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1411
    .local v1, "tempMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1412
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 1413
    .local v0, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$6;->d:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->isRightDisable()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1419
    .end local v0    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_0
    return-void
.end method
