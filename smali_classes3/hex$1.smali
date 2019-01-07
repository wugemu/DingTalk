.class final Lhex$1;
.super Ljava/lang/Object;
.source "MiniAppListItemInChatViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

.field final synthetic b:Lhex;


# direct methods
.method constructor <init>(Lhex;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V
    .locals 0
    .param p1, "this$0"    # Lhex;

    .prologue
    .line 91
    iput-object p1, p0, Lhex$1;->b:Lhex;

    iput-object p2, p0, Lhex$1;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lhex$1;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getJumpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lhex$1;->b:Lhex;

    invoke-static {v1}, Lhex;->a(Lhex;)Lheo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "ding_content_type"

    iget-object v2, p0, Lhex$1;->b:Lhex;

    invoke-static {v2}, Lhex;->a(Lhex;)Lheo;

    move-result-object v2

    invoke-interface {v2}, Lheo;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v1, "cid"

    iget-object v2, p0, Lhex$1;->b:Lhex;

    invoke-static {v2}, Lhex;->a(Lhex;)Lheo;

    move-result-object v2

    invoke-interface {v2}, Lheo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lhex$1;->b:Lhex;

    invoke-static {v2}, Lhex;->b(Lhex;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
