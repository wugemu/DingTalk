.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;
.super Ljava/lang/Object;
.source "MiniAppInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    return-void
.end method
