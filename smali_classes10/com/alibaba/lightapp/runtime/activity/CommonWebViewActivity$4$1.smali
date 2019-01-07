.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

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
    .line 391
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->f:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->a:Lhin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4$1;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;

    iget v4, v4, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$4;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lhin;Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    :cond_0
    return-void
.end method
