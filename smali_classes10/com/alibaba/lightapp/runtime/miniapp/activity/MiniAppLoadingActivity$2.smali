.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;
.super Ljava/lang/Object;
.source "MiniAppLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
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
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

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
    .line 141
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "miniAppId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "corpId":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lhhx;->a(Ljava/lang/String;Ljava/lang/String;I)Lhin;

    move-result-object v0

    .line 144
    .local v0, "appStatementModel":Lhin;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lhin;->d:Ljava/lang/Boolean;

    invoke-static {v3}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;Lhin;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method
