.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;->onCheck()V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    if-nez v1, :cond_1

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://attend.dingtalk.com/attend/index.html?showmenu=false&dd_share=false&dd_progress=false#/fastcheck/privacyPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 196
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
