.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->setRight(ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;ZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->b:Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->d:Z

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
    .line 1336
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->a:Z

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->c(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;Z)V

    .line 1337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    .local v1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->b:Z

    if-eqz v2, :cond_1

    .line 1339
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;-><init>()V

    const-string/jumbo v3, "-2"

    .line 1340
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setId(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->c:Ljava/lang/String;

    .line 1341
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setText(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->d:Z

    .line 1343
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setControl(Z)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 1345
    .local v0, "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1346
    sget v2, Lhdn$g;->menu_overflow:I

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->setDrawableId(I)Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    move-result-object v0

    .line 1348
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    .end local v0    # "itemModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8$4;->e:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$8;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->m(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    move-result-object v2

    sget-object v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    const-string/jumbo v4, "#000000"

    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    return-void
.end method
