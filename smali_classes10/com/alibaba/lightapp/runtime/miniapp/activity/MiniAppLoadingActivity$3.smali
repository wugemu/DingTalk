.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;
.super Ljava/lang/Object;
.source "MiniAppLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    sget v2, Lhdn$k;->and_miniapp_loading_net_setting_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_1
    return-void
.end method
