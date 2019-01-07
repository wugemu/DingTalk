.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;
.super Ljava/lang/Object;
.source "MiniAppInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v2, v2, Lhoc;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method
