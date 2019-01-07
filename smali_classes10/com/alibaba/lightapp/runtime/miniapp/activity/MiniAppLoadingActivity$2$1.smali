.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;
.super Ljava/lang/Object;
.source "MiniAppLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhin;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;Lhin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->a:Lhin;

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
    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;->a:Lhin;

    iget-object v1, v1, Lhin;->e:Ljava/util/Map;

    invoke-static {v1}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
