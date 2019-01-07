.class final Lhey$1;
.super Ljava/lang/Object;
.source "MiniAppListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

.field final synthetic b:Lhey;


# direct methods
.method constructor <init>(Lhey;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V
    .locals 0
    .param p1, "this$0"    # Lhey;

    .prologue
    .line 104
    iput-object p1, p0, Lhey$1;->b:Lhey;

    iput-object p2, p0, Lhey$1;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lhey$1;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getJumpUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "mini_app_launch_broadcast_enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    iget-object v2, p0, Lhey$1;->b:Lhey;

    invoke-static {v2}, Lhey;->a(Lhey;)Lheo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    const-string/jumbo v2, "ding_content_type"

    iget-object v3, p0, Lhey$1;->b:Lhey;

    invoke-static {v3}, Lhey;->a(Lhey;)Lheo;

    move-result-object v3

    invoke-interface {v3}, Lheo;->e()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lhey$1;->b:Lhey;

    invoke-static {v3}, Lhey;->a(Lhey;)Lheo;

    move-result-object v3

    invoke-interface {v3}, Lheo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lhey$1;->b:Lhey;

    invoke-static {v3}, Lhey;->b(Lhey;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 115
    iget-object v2, p0, Lhey$1;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getStickyStatus()Z

    move-result v1

    .line 116
    .local v1, "isSticky":Z
    iget-object v2, p0, Lhey$1;->b:Lhey;

    iget-object v2, v2, Lhey;->d:Lhep;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhey$1;->b:Lhey;

    iget v2, v2, Lhey;->b:I

    if-ltz v2, :cond_1

    if-nez v1, :cond_1

    .line 117
    iget-object v2, p0, Lhey$1;->b:Lhey;

    iget-object v2, v2, Lhey;->d:Lhep;

    iget-object v3, p0, Lhey$1;->b:Lhey;

    iget v3, v3, Lhey;->b:I

    iget-object v4, p0, Lhey$1;->b:Lhey;

    iget v4, v4, Lhey;->c:I

    const-string/jumbo v5, "mini_action_type_launch"

    invoke-interface {v2, v3, v4, v5}, Lhep;->a(IILjava/lang/String;)V

    .line 120
    :cond_1
    return-void
.end method
