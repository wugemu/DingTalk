.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;
.super Ljava/lang/Object;
.source "MiniAppListActivity.java"

# interfaces
.implements Lhmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    .local p1, "listItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)Lheq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListActivity;)Lheq;

    move-result-object v0

    .line 1220
    iget-object v1, v0, Lheq;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1221
    invoke-virtual {v0}, Lheq;->c()V

    .line 1222
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1223
    invoke-virtual {v0}, Lheq;->b()V

    .line 1225
    :cond_0
    iget-object v1, v0, Lheq;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1227
    invoke-virtual {v0}, Lheq;->notifyDataSetChanged()V

    .line 67
    :cond_1
    return-void
.end method
